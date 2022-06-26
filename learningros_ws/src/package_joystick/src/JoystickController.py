#!/usr/bin/env python3.8
import rospy
from package_joystick.msg import joy
 
def cb(Int16):
    # rospy.loginfo("X: %s", Int16.posisi_x)
    # rospy.loginfo("Y: %s", Int16.posisi_y)
    if Int16.posisi_y > 1500:
        rospy.loginfo("Kapal sedang maju")
        rospy.loginfo(Int16.posisi_y)
    elif Int16.posisi_y < 1500:
        rospy.loginfo("Kapal sedang mundur")
        rospy.loginfo(Int16.posisi_y)
    
def listener():
    rospy.init_node('Joystick_listener', anonymous=True)
    rospy.Subscriber("package_joystick/joystick", joy, cb)
    rospy.spin()
 
if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass