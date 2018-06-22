#include <algorithm>
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <sstream>
#include <math.h>

#include <eigen3/Eigen/Dense>
#include <geometry_msgs/Twist.h>

using Eigen::Matrix3f;
using Eigen::MatrixXf;
using Eigen::MatrixXd;
using Eigen::Vector3f;
using Eigen::Vector2f;
using geometry_msgs::Twist;
using std::cout;
using std::vector;
using namespace std;


ros::Publisher takeoff;
ros::Publisher land;
ros::Publisher driver;

std_msgs::Empty e;
geometry_msgs::Twist twist;
/*
int main(int argc, char **argv){

    ////////////////// INIT ////////////////////////
    ros::init(argc, argv, "drive_square");
    ros::NodeHandle n;;

   RobotLocation currentLocation;

    ////////////////// PUBLISHERS //////////////////
    takeoff = n.advertise<std_msgs::Empty>("/bebop/takeoff", 1);
    ROS_INFO("ready to publish takeoff ...");

    land = n.advertise<std_msgs::Empty>("/bebop/land", 1);
    ROS_INFO("ready to publish land ...");

    driver = n.advertise<geometry_msgs::Twist>("/bebop/cmd_vel",1);
    ROS_INFO("ready to publish drives ...");

    sleep(5);

    ////////////////// TAKEOFF /////////////////////
    takeoff.publish(e);
    ROS_INFO("takeoff");
    sleep(5);
   
   
   ros::Rate r(10);


    Point32 pt;
    pt.x = 0;
    pt.y = 0;
    pt.z = 0;


    while(ros::ok()){
        ros::spinOnce();
        r.sleep();
    }


    return 0;
}*/