FROM nimbix/ubuntu-desktop


RUN apt-get update && apt-get -y --force-yes install gedit && apt-get clean
RUN apt-get install paraview

RUN sudo apt-get install octave
RUN sudo apt-get install evince
RUN sudo apt-get git-core

