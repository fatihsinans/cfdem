FROM nimbix/ubuntu-desktop

RUN apt-get install gedit

ADD ./NAE/help.html /etc/NAE/help.html
