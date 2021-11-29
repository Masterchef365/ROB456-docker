# FROM http://wiki.ros.org/docker/Tutorials/GUI

xhost + # Allow X11 connections

# Use the non-modified docker image
#docker run -it \
#    --rm \ 
#    --env="DISPLAY" \
#    --env="QT_X11_NO_MITSHM=1" \
#    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
#    osrf/ros:melodic-desktop-full \
#    $@

# Use the modified docker image
docker run -it \
    --rm \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -v $PWD:/cwd \
    -w /cwd \
    --name rob456_ros\
    melodic_ros_turtle \
    $@
