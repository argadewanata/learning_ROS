#!/usr/bin/env python3
import turtle
import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist

def turtle_pose_callback(pose:Pose):
    cmd = Twist()
    if pose.x > 9.0 or pose.x < 2.0 or pose.y > 9.0 or pose.x < 2.0 : #If in danger zone 
        cmd.linear.x = 1.0
        cmd.angular.z = 1.4
    else :
        cmd.linear.x = 5.0
        cmd.angular.z = 0.0
    pub.publish(cmd)

if __name__== '__main__':
    try:
        rospy.init_node("turtle_pose_controller",anonymous=True)
        pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10)
        sub = rospy.Subscriber("/turtle1/pose",Pose,callback=turtle_pose_callback)
    
        rospy.loginfo("Turtle Pose Controller Node has been started")
    
        rospy.spin() # The callback function gonna run infinitely until publisher stop

    except rospy.ROSInterruptException:
        pass
