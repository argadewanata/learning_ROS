#!/usr/bin/env python3.8
import rospy
from package_joystick.msg import joy

def talker():
    pub = rospy.Publisher('package_joystick/joystick',joy,queue_size=10)
    rospy.init_node('thruster',anonymous=True)
    rate = rospy.Rate(10) 
    while not rospy.is_shutdown():
        #hello_str = "hello world %s" % rospy.get_time()
        #speed = 1800
        # rospy.loginfo(speed)
        # pub.publish(speed)
        print(type(joy.posisi_y))
        # speed = int(joystick.posisi_y) + 1200
        rospy.loginfo(joy.posisi_y)
        pub.publish(joy.posisi_y)
        # rospy.loginfo(speed)
        # pub.publish(speed)
        rate.sleep()

if __name__== '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass