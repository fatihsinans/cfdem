FROM nimbix/ubuntu-desktop


RUN apt-get update && apt-get -y --force-yes install gedit

RUN apt-get install -y paraview

RUN sudo apt-get -y install octave
RUN sudo apt-get -y install evince
RUN sudo apt-get -y install git-core

