FROM ros:kinetic-ros-core-xenial

RUN apt-get update && apt-get install -y vim
RUN apt-get install -y ros-kinetic-ros-tutorials \
  ros-kinetic-rqt \
  ros-kinetic-rqt-common-plugins

RUN apt-get install -y gdb

RUN mkdir -p /catkin_ws/src
RUN echo "source /ros_entrypoint.sh" >> /etc/bash.bashrc
RUN echo "set +e" >> ~/.bashrc

COPY beginner_tutorials /catkin_ws/src/beginner_tutorials

WORKDIR /catkin_ws

CMD ["bash"]
