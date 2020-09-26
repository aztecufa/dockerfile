FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install default-jdk -y
RUN apt-get install tomcat8 -y
RUN apt-get install git -y
RUN apt-get install maven -y
EXPOSE 8080
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && cd boxfuse-sample-java-war-hello && mvn package && cp ./target/hello-1.0.war /var/lib/tomcat8/webapps/
CMD ["catalin.sh", "run"]
