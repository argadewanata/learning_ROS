#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist

def draw_circle():
    rospy.init_node("draw_circle",anonymous = True)
    rospy.loginfo("Node has been started")
    rospy.logwarn("Node has been started")
    rospy.logerr("Node has been started")

    pub = rospy.Publisher("/turtle1/cmd_vel",Twist,queue_size=10) # queue_size is buffer size
    rate = rospy.Rate(2) #2 Hz
    while not rospy.is_shutdown():
        #Publish cmd velocity
        msg = Twist()
        msg.linear.x = 2.0
        msg.angular.z = 1.0 #You dont need to fill al the angular xyz and linear xyz. It will  filled with default value (0)
        pub.publish(msg)
        rate.sleep()


if __name__== '__main__':
    try:
        draw_circle()
    except rospy.ROSInterruptException:
        pass
