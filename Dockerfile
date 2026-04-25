FROM tomcat:9.0.89-jdk17-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY repositorio.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]