FROM nimbix/ubuntu-desktop


RUN apt-get update && apt-get -y --force-yes install gedit && apt-get clean

