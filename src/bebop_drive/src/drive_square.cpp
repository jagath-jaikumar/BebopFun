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

bool driveHover(Twist twist, int time){
    twist.linear.x = 0;
    twist.linear.y = 0;
    twist.linear.z = 0;
    twist.angular.z = 0;

    driver.publish(twist);
    sleep(time);
    return true;
}

bool driveForward(Twist twist, int time, double speed = 1){
    twist.linear.x = speed;
    twist.linear.y = 0;
    twist.linear.z = 0;
    twist.angular.z = 0;

    driver.publish(twist);
    sleep(time);
    return true;
}

bool driveBackward(Twist twist, int time, double speed = -1){
    twist.linear.x = speed;
    twist.linear.y = 0;
    twist.linear.z = 0;
    twist.angular.z = 0;

    driver.publish(twist);
    sleep(time);
    return true;
}

bool driveLeft(Twist twist, int time, double speed = 1){
    twist.linear.x = 0;
    twist.linear.y = speed;
    twist.linear.z = 0;
    twist.angular.z = 0;

    driver.publish(twist);
    sleep(time);
    return true;
}

bool driveRight(Twist twist, int time, double speed = -1){
    twist.linear.x = 0;
    twist.linear.y = speed;
    twist.linear.z = 0;
    twist.angular.z = 0;

    driver.publish(twist);
    sleep(time);
    return true;
}

bool turnCCW(Twist twist, double angle){
    twist.linear.x = 0;
    twist.linear.y = 0;
    twist.linear.z = 0;
    twist.angular.z = 1;

    driver.publish(twist);
    sleep(angle);
    return true;
}

bool turnCW(Twist twist, double angle){
    twist.linear.x = 0;
    twist.linear.y = 0;
    twist.linear.z = 0;
    twist.angular.z = -1;

    driver.publish(twist);
    sleep(angle);
    return true;
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

    sleep(5);

    ////////////////////////////////////////////////
    ////////////////// FLIGHT //////////////////////
    ////////////////////////////////////////////////


    ////////////////// TAKEOFF /////////////////////
    takeoff.publish(e);
    ROS_INFO("takeoff");
    sleep(5);

    ////////////////// IN AIR //////////////////////

    /*
    ros::Rate loop(20);
    while(ros::ok()){
        executePath();
        ros::spinOnce();
        loop.sleep();
    }
    */
/*
    driveForward(twist, 5, .5);
    sleep(1);

    driveRight(twist, 5, .5);
    sleep(1);

    driveBackward(twist, 5, -.5);
    sleep(1);

    driveLeft(twist, 5, -.5);
    sleep(1);
    
*/
    Twist t;
    t.linear.x = .5;
    t.linear.y = 0;
    t.linear.z = 0;
    t.angular.z = 0;
    int i = 0;
    while(i < 1000000){
        i++;
        driver.publish(t);
    }
    

    ////////////////// LAND ////////////////////////
    land.publish(e);
    ROS_INFO("land");

    return 0;
}