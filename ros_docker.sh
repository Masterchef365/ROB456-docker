# FROM http://wiki.ros.org/docker/Tutorials/GUI

xhost + # Allow X11 connections
#docker run -it \
#    --rm \ 
#    --env="DISPLAY" \
#    --env="QT_X11_NO_MITSHM=1" \
#    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
#    osrf/ros:melodic-desktop-full \
#    $@

docker run -it \
    --rm \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -v $PWD:/cwd \
    -w /cwd \
    melodic_ros_turtle \
    $@
