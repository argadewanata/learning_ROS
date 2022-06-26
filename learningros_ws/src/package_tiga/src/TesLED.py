#!/usr/bin/env python3.8

import rospy
from std_msgs.msg import Int8

def talker():
    pub = rospy.Publisher('chatter',Int8,queue_size=10)
    rospy.init_node('talker',anonymous=True)
    rate = rospy.Rate(10) 
    while not rospy.is_shutdown():
        #hello_str = "hello world %s" % rospy.get_time()
        hello_str = 4
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()

if __name__== '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

# Langkah menyambungkan dengan arduino 
# 1. sudo chmod 666 /dev/ttyACM0
# 2. roscore
# 3. source devel/setup.bash
# 4. rosrun rosserial_python serial_node.py /dev/ttyACM0
# 5. source devel/setup.bash
# 6. rosrun this mf