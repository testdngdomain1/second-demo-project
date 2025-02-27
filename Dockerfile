FROM centos:7
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.tar.gz .
RUN tar -zxvf apache-tomcat-9.0.63.tar.gz
RUN cp -R /opt/tomcat/apache-tomcat-9.0.63/* /opt/tomcat
COPY **/*.war /opt/tomcat/webapps
EXPOSE 8080
CMD [ "/opt/tomcat/bin/catalina.sh","run" ]
