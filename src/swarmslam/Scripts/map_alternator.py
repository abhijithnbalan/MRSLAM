#!/usr/bin/env python
    
import rospy
# from nav2d_msgs import LocalizedScan    
import nav2d_msgs

pub = rospy.Publisher('/map_in', nav2d_msgs/LocalizedScan, queue_size=10) 

def callback1(data):
    print "map from 1"
    pub.publish(data)

def callback(data):
    print "Map from 2"
    pub.publish(data)

def callback(data):
    print "Map from 3"
    pub.publish(data)


def timer_callback(event):
    if (started):
        pub.publish(data)
        print "Last message published"

def listener():

    rospy.init_node('map_alternator')

    rospy.Subscriber('/shared_scans_r1', nav2d_msgs/LocalizedScan, callback1)
    rospy.Subscriber('/shared_scans_r2', nav2d_msgs/LocalizedScan, callback2)
    rospy.Subscriber('/shared_scans_r3', nav2d_msgs/LocalizedScan, callback3)
    timer = rospy.Timer(rospy.Duration(0.5), timer_callback)

    rospy.spin()    
    timer.shutdown()

if __name__ == '__main__':
    print "Running"
    listener()