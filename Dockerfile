FROM nimbix/ubuntu-desktop



RUN apt-get update ; \
apt-get -y --force-yes install \
gedit \
paraview \
octave \
evince \
build-essential \
flex \
bison \
cmake \
zlib1g-dev \
libboost-system-dev \
libboost-thread-dev \
libopenmpi-dev \
openmpi-bin \
gnuplot \
ibreadline-dev \
libncurses-dev \
libxt-dev \
libscotch-dev \
ibptscotch-dev \
libvtk6-dev \
python-numpy \
git-core ; \
apt-get clean
