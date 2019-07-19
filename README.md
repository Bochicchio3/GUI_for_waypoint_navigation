# Matlab Gui for Rover control

This is the guide for using Matlab Gui for the rover.
Through this interface you can initialize a ros network, subscribe to an existing ros network and publish in specific topics.

##  1) Requirements

Requirements for this tools are:

1) Robotics Toolbox for Matlab

https://it.mathworks.com/products/robotics.html

2) GUIDE Toolbox

https://it.mathworks.com/discovery/matlab-gui.html

## 2) Start the Interface

To start the interface, open Matlab, (version between 2014a and 2018b should all be fine) 

1) Type "guide" in the command window.
2) Load the "WAYPOINT_PUB.fig" file by navigating to its folder.
3) Press the green play button.

## 3) Usage

The usage is extremely simple:

### 3.1) Subscribe or Initialize a Ros network

First of all, you must initialize or subscribe to a Ros Network.
In the specific case of the rover, we connect to ROSNET on the Intel Joule and launch the roscore there.

In general, if you setup a network on a PC, and you want to connect to that network follow this procedure:
Make sure that you are connected to the same local network and that you can succesfully ping the Computer

1)Open a terminal
2)'print env | grep URI
3)You should see something like: ROS_MASTER_URI=http://192.1.1.1:11311
4)Copy the IP (http://ip:localport) in the ROS INIT box
5)Press the ROS INIT button

Be aware, that if you already initialized or subscribed to a ros network you will se an error on the matlab interface. In that case, just make sure
that you press on SHUTDOWN and then try ROS_INIT again.

### 3.2) Publish a Waypoint

To publish a waypoint, write the requested X and Y in the proper boxes, and press Publish.
This will publish a message in the right topic with the proper coordinates.


### 3.3) Safety Switch

The safety switch needs to be enabled to move the rover. The default value is Stop. If you want to move the rover, it must be set to Start.
In case of emergency, you can just publish Stop at any moment.
Do not operate the rover without being ready to press the stop button, otherwise you may cause damage.




