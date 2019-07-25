FROM ros:kinetic-robot
RUN apt-get update && apt-get install -y ros-kinetic-tf2* vim
COPY src /code/src
COPY buildit.sh /code
COPY runit.sh /
RUN ./code/buildit.sh
