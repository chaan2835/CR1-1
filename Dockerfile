FROM ubuntu 
WORKDIR /root/.jenkins/jar-to-docker-images 
COPY target/jb-hello-world-maven-*jar /jb-hello-world-maven.jar
EXPOSE 80
CMD ["java","-jar","jb-hello-world-maven"]
