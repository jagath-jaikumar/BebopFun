#include <algorithm>
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <sstream>
#include <math.h>

#include <eigen3/Eigen/Dense>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Point32.h>

#include <iostream>
#include <fstream>

using Eigen::Matrix3f;
using Eigen::MatrixXf;
using Eigen::MatrixXd;
using Eigen::Vector3f;
using Eigen::Vector2f;
using geometry_msgs::Twist;
using std::cout;
using std::vector;
using namespace std;
using geometry_msgs::Point32;


ros::Publisher takeoff;
ros::Publisher land;
ros::Publisher driver;

std_msgs::Empty e;
geometry_msgs::Twist twist;

const double PI = 3.14159265358979323846;
const double TWOPI = 2.0*PI;
const int precision = 35;
const double magnitude = 80;

const Vector3f ktranslate = Vector3f(0, 10, 200);

Point32 kinect2drone(Point32 k){
    Point32 d;

    d.x = k.x + ktranslate.x();
    d.y = k.y + ktranslate.y();
    d.z = k.z + ktranslate.z();

    return d;
}



Point32 figure8(double t){
    Point32 p;

    double q = (t/precision) * TWOPI;

    p.x = magnitude*cos(q);
    p.y = 0;
    p.z = sin(2*q);;

    return p;
}


int main(int argc, char **argv){

    ////////////////// INIT ////////////////////////
    ros::init(argc, argv, "drive_square");
    ros::NodeHandle n;

    ////////////////// PUBLISHERS //////////////////
    takeoff = n.advertise<std_msgs::Empty>("/bebop/takeoff", 1);
    ROS_INFO("ready to publish takeoff ...");

    land = n.advertise<std_msgs::Empty>("/bebop/land", 1);
    ROS_INFO("ready to publish land ...");

    driver = n.advertise<geometry_msgs::Twist>("/bebop/cmd_vel",1);
    ROS_INFO("ready to publish drives ...");

  //  sleep(5);

    ////////////////// TAKEOFF /////////////////////
    takeoff.publish(e);
    ROS_INFO("takeoff");
  //  sleep(5);

    ofstream functionfile;
    functionfile.open ("/home/nb950/catkin_ws/src/bebop_drive/output/functionoutput.csv");

    functionfile << "type, t,x,y,z\n";

    double t = 0;

    while (t < precision+1){
        Point32 p = kinect2drone(figure8(t));
        functionfile << "" << ","<< t << "," << p.x << "," << p.y << "," << p.z <<"\n";
        t++;
    }


    functionfile.close();




       ////////////////// LAND ////////////////////////
    land.publish(e);
    ROS_INFO("land");

    return 0;
}