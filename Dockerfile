FROM ros:kinetic-robot
#RUN apt-get update && apt-get install -y ros-kinetic-tf2* vim
COPY src /code/src
COPY buildit.sh /code
RUN ./code/buildit.sh
RUN /bin/bash -c "mv /code/install /app"
RUN /bin/bash -c "rm -rf /code"
COPY runit.sh /
