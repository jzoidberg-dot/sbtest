FROM centos:7
RUN yum install python3 ansible openssh openssh-server.x86_64 java git -y
EXPOSE 22
RUN ssh-keygen -A
RUN useradd jenkins && \
su jenkins && \
mkdir /home/jenkins/.ssh && \
mkdir /home/jenkins/ansible && \
chown jenkins. /home/jenkins/ansible
COPY authorized_keys /home/jenkins/.ssh/
RUN chown jenkins. /home/jenkins/.ssh/authorized_keys
CMD /usr/sbin/sshd -D -f /etc/ssh/sshd_config