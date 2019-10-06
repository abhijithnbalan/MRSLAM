#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/Spawn.h>
#include <std_msgs/Float64.h>
#include "std_msgs/Bool.h"
#include <string>
#include <stdio.h>

int main(int argc, char** argv){
    ros::init(argc, argv, "my_tf_listener");
    std::string FromRobot,ToRobot,OutRobot;
    int range,map_x,map_y;
    std_msgs::Bool InRange;
    int r1_init_x,r1_init_y,r2_init_x,r2_init_y;
    // tf::StampedTransform init_trans1,init_trans2;

    ros::NodeHandle node("~");
    node.param("tf_from", FromRobot, std::string("robot_0"));
	node.param("tf_to", ToRobot ,std::string("robot_1"));
    node.param("output", OutRobot ,std::string("output"));
    node.param("robot_range",range,10);
    node.param("R1_init_x",r1_init_x,10);
    node.param("R2_init_y",r2_init_y,10);
    node.param("R2_init_x",r2_init_x,10);
    node.param("R1_init_y",r1_init_y,10);
    node.param("R1_R2_map_align_x",map_x,10);
    node.param("R1_R2_map_align_y",map_y,10);

    int x_diff = r1_init_x - r2_init_x;
    int y_diff = r1_init_y - r2_init_y;
    // node.param("Initial_pose_robot_1",init_trans1,10);
    // node.param("Initial_pose_robot_2",init_trans1,10);
    
    // std::cout<<"from" + FromRobot;
    // std::cout<<"frto" + ToRobot;
//   ros::service::waitForService("spawn");
//   ros::ServiceClient add_turtle = 
//     node.serviceClient<turtlesim::Spawn>("spawn");
//   turtlesim::Spawn srv;
//   add_turtle.call(srv);
    // ros::Publisher BasePos1 = node.advertise<std_msgs::Bool>("PosReached",1000);
    ros::Publisher inside_range = node.advertise<std_msgs::Bool>(OutRobot, 10);
    ros::Publisher inside_range_dis = node.advertise<std_msgs::Float64>(OutRobot+"dist", 10);

    tf::TransformListener listener;

    ros::Rate rate(10.0);
    while (node.ok()){
        // tf::TransformBroadcaster br;
        tf::StampedTransform transform, transform1,transform2,fin_trans,init_trans;
        // try{
        // listener.lookupTransform(FromRobot + "/base_scan",FromRobot + "/map",  
        //                         ros::Time(0), transform1);
        // }
        // catch (tf::TransformException ex){
        // ROS_ERROR("%s",ex.what());
        // ros::Duration(1.0).sleep();
        // }
        // transform1 = transform1 * init_trans1;
        // br.sendTransform(transform1, ros::Time::now(),FromRobot + "/robo_pose", FromRobot + "/base_scan");
        // try{
        // listener.lookupTransform(ToRobot + "/base_scan",ToRobot + "/map",  
        //                         ros::Time(0), transform2);
        // }
        // catch (tf::TransformException ex){
        // ROS_ERROR("%s",ex.what());
        // ros::Duration(1.0).sleep();
        // }
        // transform2 = transform2 * init_trans2;
        // br.sendTransform(transform1, ros::Time::now(),ToRobot + "/robo_pose", ToRobot + "/base_scan");
        // try{
        // listener.lookupTransform(FromRobot + "/robo_pose",ToRobot + "/robo_pose",  
        //                         ros::Time(0), fin_trans);
        // }
        // catch (tf::TransformException ex){
        // ROS_ERROR("%s",ex.what());
        // ros::Duration(1.0).sleep();
        // }

        // try{
        // listener.lookupTransform(FromRobot + "/base_link",ToRobot + "/base_link",  
        //                         ros::Time(0), transform);
        // }
        // catch (tf::TransformException ex){
        // ROS_ERROR("%s",ex.what());
        // ros::Duration(1.0).sleep();
        // }

        try{
        listener.lookupTransform(FromRobot + "/map" ,FromRobot + "/base_link", ros::Time(0), transform1);
        }
        catch (tf::TransformException ex){
        ROS_ERROR("%s",ex.what());
        ros::Duration(1.0).sleep();
        }
        try{
        listener.lookupTransform(ToRobot + "/map" ,ToRobot + "/base_link", ros::Time(0), transform2);
        }
        catch (tf::TransformException ex){
        ROS_ERROR("%s",ex.what());
        ros::Duration(1.0).sleep();
        }
        // std::cout<<"x = "<<transform.getOrigin().x()<<" y = "<<transform.getOrigin().y()<<"\n";
        // std::cout<<FromRobot<<" "<<ToRobot<<" "<<"x_diff = "<<x_diff<<"\n";

        // double distance = sqrt(pow(transform.getOrigin().x(), 2) + pow(transform.getOrigin().y(), 2));
        double distance = sqrt(pow(transform2.getOrigin().x() - transform1.getOrigin().x() - x_diff, 2) + pow(transform2.getOrigin().y() - transform1.getOrigin().y() - y_diff , 2));
        
        if(distance < range)
        {
            InRange.data = true;
        }
        else
        {
            InRange.data = false;
        }
        
        
        inside_range.publish(InRange);
        std_msgs::Float64 dis_val;
        dis_val.data = distance;
        inside_range_dis.publish(dis_val);


        rate.sleep();
    }
    return 0;
};