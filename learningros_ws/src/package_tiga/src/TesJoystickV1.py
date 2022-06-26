#!/usr/bin/env python3.8
import rospy
from package_tiga.msg import joystick_pos

def joystick_callback(msg:joystick_pos):
    rospy.loginfo("(X:" + str(joystick_pos) + "Y:" + str(joystick_pos) + ")" )

def listener():
    rospy.init_node('listener',anonymous=True)
    rospy.Subscriber('chatter',joystick_pos,callback=joystick_callback)
    rospy.spin()

listener()

# if __name__== '__main__':
#     try:
#         listener()
#     except rospy.ROSInterruptException:
#         pass

