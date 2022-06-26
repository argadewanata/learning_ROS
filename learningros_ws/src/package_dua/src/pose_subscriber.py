#!/usr/bin/env python3
import rospy
from turtlesim.msg import Pose

def pose_callback(msg:Pose):
    rospy.loginfo("(x:" + str(msg.x) + "y:" + str(msg.y) + ")" )

def turtle_pose_subscriber():
    rospy.init_node("turtle_pose_subscriber",anonymous = True)
    rospy.Subscriber('/turtle1/pose',Pose,callback=pose_callback)

    rospy.loginfo("Turtle Pose Subscriber Node has been started")
    rospy.logwarn("Turtle Pose Subscriber Node has been started")
    rospy.logerr("Turtle Pose Subscriber Node has been started")

    rospy.spin() # The callback function gonna run infinitely until publisher stop

if __name__== '__main__':
    try:
        turtle_pose_subscriber()
    except rospy.ROSInterruptException:
        pass