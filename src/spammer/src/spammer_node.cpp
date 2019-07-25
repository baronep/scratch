#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "spammer");
    ros::NodeHandle nh_;
    ros::Publisher spammer_pub = nh_.advertise<std_msgs::String>("spam", 1000);
    ros::Rate loop_rate(10);

    while (ros::ok())
    {
        std_msgs::String msg;
        msg.data = "Hello World";
        spammer_pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}
