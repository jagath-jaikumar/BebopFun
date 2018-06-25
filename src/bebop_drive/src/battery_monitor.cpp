#include <ros/ros.h>

#include <std_msgs/String.h> 
#include <stdio.h>


void batterywo(const april_tag::AprilTagList msg1)
{
   apr_list = msg1;
}

int main(int argc, char **argv)
{
   ros::init(argc, argv, "pose_pub_1");
   ros::NodeHandle n;

   ros::Subscriber pos_ori_sub = n.subscribe<april_tag::AprilTagList>  ("/april_tags", 50, batterywo);
   ros::Rate loop_rate(10);

   int count = 1;



   while(ros::ok()){


       std::cout <<  apr_list;
       ros::spinOnce();
       count++;
       loop_rate.sleep();

   }


   return 0;
}