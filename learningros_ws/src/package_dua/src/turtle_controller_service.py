#!/usr/bin/env python3
import turtle
import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
from turtlesim.srv import SetPen

previuous_x = 0

def call_set_pen_service(r,g,b,width,off):
    try:
        set_pen = rospy.ServiceProxy("/turtle1/set_pen",SetPen) #/turtle1/set_pen is the service name
        response = set_pen(r,g,b,width,off)
    except rospy.rospy.ServiceException as e:
        rospy.logwarn(e)

def turtle_pose_callback(pose:Pose):
    cmd = Twist()
    if pose.x > 9.0 or pose.x < 2.0 or pose.y > 9.0 or pose.x < 2.0 : #If in danger zone 
        cmd.linear.x = 1.0
        cmd.angular.z = 1.4
    else :
        cmd.linear.x = 5.0
        cmd.angular.z = 0.0
    pub.publish(cmd)
    
    global previuous_x 
    # to create compare variable because calling services so frequently will power draining
    # we will call it if we cross the threshold
    if pose.x >= 5.5 and previuous_x < 4.5 :
        rospy.loginfo("Set color to red")
        call_set_pen_service(255,0,0,3,0)
        previuous_x = pose.x
    elif pose.x < 5.5 and previuous_x >= 5.5:
        rospy.loginfo("set color to blue")
        call_set_pen_service(0,0,25,3,0)
        previuous_x = pose.x
    

if __name__== '__main__':
    try:
        rospy.init_node("turtle_pose_controller",anonymous=True)
        rospy.wait_for_service("/turtle1/set_pen") # Best practice to wait for the service available
        call_set_pen_service(255,0,0,3,0)
        pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10)
        sub = rospy.Subscriber("/turtle1/pose",Pose,callback=turtle_pose_callback)
    
        rospy.loginfo("Turtle Pose Controller Node has been started")
    
        rospy.spin() # The callback function gonna run infinitely until publisher stop

    except rospy.ROSInterruptException:
        pass
