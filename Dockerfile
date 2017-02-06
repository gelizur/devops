FROM centos:6
MAINTAINER Gadi1
run yum -y install java-1.8.0-openjdk-devel.x86_64
run yum -y install tomcat6

EXPOSE 8080
ENTRYPOINT /etc/init.d/tomcat6 start && tail -f  /var/log/tomcat6/catalina.out
