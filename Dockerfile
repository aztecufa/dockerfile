FROM tomcat:9.0
RUN apt update && \
apt install maven git -y && \
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse
WORKDIR /tmp/boxfuse
RUN mvn package && \
cp ./target/hello-1.0.war /usr/local/tomcat/webapps/hello.war
