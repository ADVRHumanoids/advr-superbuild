/*
 * Copyright (C) 2017 IIT-ADVR
 * Author:
 * email:
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>
*/

#include <kukatest_plugin.h>
// #include <eigen_conversions/eigen_msg.h>

/* Specify that the class XBotPlugin::kukatest is a XBot RT plugin with name "kukatest" */
REGISTER_XBOT_PLUGIN(kukatest, XBotPlugin::kukatest)

namespace XBotPlugin {

bool kukatest::init_control_plugin(std::string path_to_config_file,
                                                    XBot::SharedMemory::Ptr shared_memory,
                                                    XBot::RobotInterface::Ptr robot)
{
    /* This function is called outside the real time loop, so we can
     * allocate memory on the heap, print stuff, ...
     * The RT plugin will be executed only if this init function returns true. */


    /* Save robot to a private member. */
    _robot = robot;

    /* Initialize a logger which saves to the specified file. Remember that
     * the current date/time is always appended to the provided filename,
     * so that logs do not overwrite each other. */

    _logger = XBot::MatLogger::getLogger("/tmp/kukatest_log");

    return true;


}

void kukatest::on_start(double time)
{
    /* This function is called on plugin start, i.e. when the start command
     * is sent over the plugin switch port (e.g. 'rosservice call /kukatest_switch true').
     * Since this function is called within the real-time loop, you should not perform
     * operations that are not rt-safe. */

    /* Save the plugin starting time to a class member */
    _robot->getMotorPosition(_q0);

    /* Save the robot starting config to a class member */
    _start_time = time;
}

void kukatest::on_stop(double time)
{
    /* This function is called on plugin stop, i.e. when the stop command
     * is sent over the plugin switch port (e.g. 'rosservice call /kukatest_switch false').
     * Since this function is called within the real-time loop, you should not perform
     * operations that are not rt-safe. */
}


void kukatest::control_loop(double time, double period)
{
    /* This function is called on every control loop from when the plugin is start until
     * it is stopped.
     * Since this function is called within the real-time loop, you should not perform
     * operations that are not rt-safe. */



    std::string base_frame = _robot->model().chain("arm1").getBaseLinkName();
    std::string end_effector = _robot->model().chain("arm1").getTipLinkName();
       
    KDL::Frame b_T_ee;
    
            
    // get the current robot joint position
    Eigen::VectorXd q;
    _robot->getJointPosition(q);
    
    
    KDL::Frame w_T_link1,link1_T_link2,link2_T_link3,link3_T_link4,link4_T_link5,link5_T_link6,link6_T_ee,w_T_ee;
    
    
    w_T_link1.M.DoRotZ(q(0));
    w_T_link1.p.x(0);
    w_T_link1.p.y(0);
    w_T_link1.p.z(0.11);
    
    link1_T_link2.M.DoRotY(-q(1));
    link1_T_link2.p.x(0);
    link1_T_link2.p.y(0);
    link1_T_link2.p.z(0.2005);
    
    link2_T_link3.M.DoRotZ(q(2));
    link2_T_link3.p.x(0);
    link2_T_link3.p.y(0);
    link2_T_link3.p.z(0.2);
    
    link3_T_link4.M.DoRotY(q(3));
    link3_T_link4.p.x(0);
    link3_T_link4.p.y(0);
    link3_T_link4.p.z(0.2);
    
    link4_T_link5.M.DoRotZ(q(4));
    link4_T_link5.p.x(0);
    link4_T_link5.p.y(0);
    link4_T_link5.p.z(0.2);

    link5_T_link6.M.DoRotY(-q(5));
    link5_T_link6.p.x(0);
    link5_T_link6.p.y(0);
    link5_T_link6.p.z(0.19);    

    link6_T_ee.M.DoRotZ(q(6));
    link6_T_ee.p.x(0);
    link6_T_ee.p.y(0);
    link6_T_ee.p.z(0.078);    
    
    
    w_T_ee =  w_T_link1 * link1_T_link2 * link2_T_link3 * link3_T_link4 * link4_T_link5 * link5_T_link6 * link6_T_ee;
    
    //comparisons

    _robot->model().getPose("kuka_lwr_7_link",b_T_ee);
    std::cout << "world_T_ee:\n" << b_T_ee << std::endl; 
    std::cout << "Calculated with Direct Kinematics:\n" << w_T_ee << std::endl; 
    
    ////////////
    
    
    //////////////////////////////////////////////////       
    
    

    // Compute the jacobian matrix
    Eigen::MatrixXd J;
    _robot->model().update();
    _robot->model().getJacobian(end_effector,J);
    
//     std::cout << "Jacobian: " << J << std::endl;
    
    
    
     /* The following code checks if any command was received from the plugin standard port
     * (e.g. from ROS you can send commands with
     *         rosservice call /kukatest_cmd "cmd: 'MY_COMMAND_1'"
     * If any command was received, the code inside the if statement is then executed. */
    if(command.read(current_command)){

        if(current_command.str() == "MY_COMMAND_1"){
            /* Handle command */
        }

        if(current_command.str() == "MY_COMMAND_2"){
            /* Handle command */
        }

    }
    
    sleep(1);

}

bool kukatest::close()
{
    /* This function is called exactly once, at the end of the experiment.
     * It can be used to do some clean-up, or to save logging data to disk. */

    /* Save logged data to disk */
    _logger->flush();

    return true;
}

kukatest::~kukatest()
{
  
}

}
