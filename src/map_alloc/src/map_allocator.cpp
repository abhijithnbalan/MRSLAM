#include <ros/ros.h>
#include <nav_msgs/OccupancyGrid.h>
#include <nav_msgs/MapMetaData.h>
#include <string>
#include <map>
#include "std_msgs/Bool.h"
#include <std_msgs/Float64.h>
#include <stdio.h>
#include <sstream>

ros::Publisher * available_map;
ros::Publisher * map_area;
nav_msgs::OccupancyGrid map_old,map_new;
std_msgs::Float64 Ngray;
std::vector<ros::Subscriber> subs;

void DecisionCallback(const std_msgs::Bool::ConstPtr dec,int i)
{
    if(dec->data)
    {
        // std::cout<<"==== MAP UPDATED=======\n";
        available_map->publish(map_new);
        map_area->publish(Ngray);
        map_old = map_new;
    }
    else
    {
        available_map->publish(map_old);
        map_area->publish(Ngray);
    }
    
    return;
}
void MapReceiveCallback(const nav_msgs::OccupancyGrid msg)
{
    map_new = msg;
    return;

}
void MapReceiveCallbackFinal(const nav_msgs::OccupancyGrid msg)
{
    nav_msgs::MapMetaData info = msg.info;
    Ngray.data = 0;
    for(int i=0; i<info.height*info.width; i++)
    {
        if(msg.data[i]>1)
            Ngray.data++;
    }
    Ngray.data *= info.resolution;
    map_area->publish(Ngray);
    return;

}
int main(int argc, char** argv){
    int NumRobots,RobotNum;
    std::string MapInput,MapOutput,Decision1,Decision2;
    ros::init(argc, argv, "map_allocator");
    ros::NodeHandle node1;
    node1.param("MapInput", MapInput, std::string("map_real"));
    node1.param("MapOutput",MapOutput, std::string("map"));
    ros::NodeHandle node2("~");
    node2.param("num_robots",NumRobots, 4);
    node2.param("robot_number",RobotNum, 2);

    std::cout<<"D1 : "<<Decision1 <<"   D2 : "<<Decision2<<"\n"; 

    available_map = new ros::Publisher(node1.advertise<nav_msgs::OccupancyGrid>(MapOutput, 10));
    map_area = new ros::Publisher(node1.advertise<std_msgs::Float64>("/map_area", 10));
    ros::Subscriber map_incoming = node1.subscribe(MapInput, 10, MapReceiveCallback);
    ros::Subscriber map_incoming_final = node1.subscribe("/robot_0/map", 10, MapReceiveCallbackFinal);
    std::ostringstream ss;
    std::cout<<"robot_"<<RobotNum-1<<"\n";
	for(int i = 1; i <= NumRobots;i++)
	{
		// std::cout<<"just a test "<<RobotNum<<" "<<ss.str()<<"\n";
		std::string temp;
		ss.str("");
		ss.clear();
		if(i == RobotNum)
		{
			continue;
		}
		if(i <RobotNum)
		{
			ss<<i<<RobotNum;
			temp = "/range" + ss.str();
		}
		else
		{
			ss<<RobotNum<<i;
			temp = "/range" + ss.str();
		}
		std::cout<<temp<<" ";
		subs.push_back(node2.subscribe<std_msgs::Bool>(temp, 10, boost::bind(DecisionCallback, _1, i)));
		// std::cout<<"Robot "<<RobotNum<<"  Subscribed to  " <<temp<<"\n";
	}


    ros::spin();
    // delete available_map;
    delete map_area;
    return 0;
}



