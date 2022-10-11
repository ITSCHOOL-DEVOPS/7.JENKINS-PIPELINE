FROM tomcat:8.0-alpine
ADD ./target/* /usr/local/tomcat/webapps/
EXPOSE 8080
WORKDIR /usr/local/tomcat/bin/
CMD ["catalina.sh", "run"]                 
