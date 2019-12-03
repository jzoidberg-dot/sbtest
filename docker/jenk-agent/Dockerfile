FROM centos:7
COPY ./java8.rpm /root 
RUN yum install python3 ansible -y
RUN yum install /root/java8.rpm -y
