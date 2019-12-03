FROM centos:7
RUN yum install python3 git python3-pip.noarch -y
RUN git clone https://github.com/romashqua/workstest.git
RUN pip3 install -e /workstest/
RUN pip3 install -e /workstest/'.[test]'
ENV FLASK_APP=/workstest/js_example 
ENV LC_ALL=en_US.utf8 
ENV LANG=en_US.utf8
RUN FLASK_APP=/workstest/js_example 
CMD flask run
