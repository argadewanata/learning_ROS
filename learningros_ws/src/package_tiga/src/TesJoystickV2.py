#!/usr/bin/env python3
import rospy
from package_tiga.msg import joystick
 
def cb(Int16):
    rospy.loginfo("X: %s", Int16.posisi_x)
    rospy.loginfo("Y: %s", Int16.posisi_y)
    
def listener():
    rospy.init_node('Joystick_listener', anonymous=True)
    rospy.Subscriber("joystick", joystick, cb)
    rospy.spin()
 
if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass