FROM centos:7
RUN yum install python3 ansible openssh openssh-server.x86_64 java git docker nano -y
RUN pip3 install docker
EXPOSE 22
RUN ssh-keygen -A
RUN useradd jenkins && \
su jenkins && \
mkdir /home/jenkins/.ssh
COPY authorized_keys /home/jenkins/.ssh/
RUN chown jenkins. /home/jenkins/.ssh/authorized_keys && \
chmod 600 /home/jenkins/.ssh/authorized_keys && \\
chown jenkins. /etc/ansible -R
CMD /usr/sbin/sshd -D -f /etc/ssh/sshd_config