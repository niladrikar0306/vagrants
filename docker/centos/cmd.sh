# build image
docker build -t centos-test .
docker build -t centos-nginx:1 .

# run image 
docker run -d -i -t -p 4000:80 --privileged niladrikar0306/centos-nginx:1 /usr/sbin/init
docker run -d -i -t -p 4000:80 centos-test /usr/sbin/init

# connect to container's bash
docker exec -it dazzling_bassi /bin/bash

# push image
docker tag centos-nginx:1 niladrikar0306/centos-nginx:1
docker push niladrikar0306/centos-nginx:1

# install nginx
yum install epel-release
yum install nginx
systemctl start nginx

# show port and process
netstat -anop