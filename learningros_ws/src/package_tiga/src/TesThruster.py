#!/usr/bin/env python3.8
import rospy
from std_msgs.msg import Int16

def talker():
    pub = rospy.Publisher('chatter',Int16,queue_size=10)
    rospy.init_node('talker',anonymous=True)
    rate = rospy.Rate(10) 
    while not rospy.is_shutdown():
        #hello_str = "hello world %s" % rospy.get_time()
        speed = 1800
        rospy.loginfo(speed)
        pub.publish(speed)
        rate.sleep()

if __name__== '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass