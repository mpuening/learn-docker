#!/bin/sh

#sudo docker ps
#sudo docker stop 12345

#sudo docker run -it --entrypoint /bin/sh helloworld
#sudo docker run -it --entrypoint /opt/entrypoint.sh helloworld
#sudo docker run helloworld

sudo docker run -d -p 8080:80 helloworld

