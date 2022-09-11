FROM ubuntu 
WORKDIR /home/jar-to-dockerimage 
COPY target/jb-hello-world-maven-0.2.0.jar* .
/home/jar-to-dockerimage
RUN rm -rf ROOT && mv jb-hello-world-maven-0.2.0.jar CR1-1.jar
