FROM nimbix/ubuntu-desktop


RUN apt-get update && apt-get -y --force-yes install gedit && apt-get clean

RUN apt-get install -y paraview

RUN sudo apt-get -y install octave
RUN sudo apt-get -y install evince
RUN sudo apt-get -y install git-core
RUN sudo apt-get -y install build-essential flex bison cmake zlib1g-dev libboost-system-dev libboost-thread-dev libopenmpi-dev openmpi-bin gnuplot libreadline-dev libncurses-dev libxt-dev libscotch-dev libptscotch-dev
RUN sudo apt-get -y install libvtk6-dev python-numpy


COPY .bashrc /usr/local/


COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]
