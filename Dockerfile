FROM nimbix/ubuntu-desktop

RUN apt-get update ; \
apt-get -y --force-yes install \
gedit \
paraview \
octave \
evince \
git-core ; \
apt-get clean
