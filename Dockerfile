FROM nimbix/ubuntu-desktop


RUN apt-get update && apt-get -y --force-yes install gedit && apt-get clean

#RUN sudo apt-get -y install docker.io



#COPY docker-entrypoint.sh /usr/local/bin/
#RUN chown root:root /usr/local/bin/docker-entrypoint.sh
#RUN chmod 755 /usr/local/bin/docker-entrypoint.sh
#ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
