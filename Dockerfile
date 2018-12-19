FROM nimbix/ubuntu-desktop


RUN apt-get update && apt-get -y --force-yes install gedit && apt-get clean
RUN apt-get update && apt-get -y --force-yes install paraview && apt-get clean

ADD ./NAE/help.html /etc/NAE/help.html
