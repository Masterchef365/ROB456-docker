# syntax=docker/dockerfile:1
FROM osrf/ros:melodic-desktop-full
RUN apt update && apt install -y ros-melodic-turtlebot3-* ros-melodic-navigation 
