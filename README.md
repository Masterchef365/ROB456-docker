# Scripts for running ROS in Docker for ROB 456 at OSU
## Installation
Make sure you have installed [Docker](https://docs.docker.com/engine/install/). 

The following command will build the Docker container. It is simply the default Docker container for ROS melodic with desktop support, but with the extra packages required by the labs. The `Dockerfile` in this repo is used.
```sh
./build_container.sh
```

## Usage
You may use the docker container just like a normal Linux install of ROS. For example, one can launch lab 1 like so:

```sh
mkdir -p catkin_ws/src
cd catkin_ws
cp -r ~/ROB456and514Intros/spin_wheels src/
../scripts/ros_docker.sh catkin_make # We can run commands inside the container
../scripts/ros_docker.sh # We are now using a shell inside the container
source devel/setup.bash
export TURTLEBOT3_MODEL=waffle
roslaunch spin_wheels spin_wheels.launch
```
