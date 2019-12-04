FROM centos:7
RUN yum install python3 git python3-pip.noarch -y
RUN git clone https://github.com/romashqua/workstest.git && \
	pip3 install -e /workstest/ && \
	pip3 install -e /workstest/'.[test]' && \
ENV FLASK_APP=/workstest/js_example 
ENV LC_ALL=en_US.utf8 
ENV LANG=en_US.utf8
ENV PORT=5000
RUN FLASK_APP=/workstest/js_example 
<<<<<<< HEAD
CMD ["flask", "run", "--port=${PORT}"]
=======
CMD flask run --port=$PORT
>>>>>>> 582ac356683ca165cd047f7b8e94a001c6b31b6a
