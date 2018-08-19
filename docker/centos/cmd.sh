docker build -t centos-test .
docker run -d -i -t -p 4000:80 centos-test /usr/sbin/init
docker exec -it dazzling_bassi /bin/bash

yum install epel-release
yum install nginx
systemctl start nginx

netstat -anop