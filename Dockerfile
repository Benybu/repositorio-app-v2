FROM tomcat:9.0.89-jdk17-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY repositorio.war /usr/local/tomcat/webapps/ROOT.war

# 👇 CLAVE
ENV CATALINA_OPTS="-Dorg.apache.catalina.startup.EXIT_ON_INIT_FAILURE=true -Djava.io.tmpdir=/tmp"

CMD ["catalina.sh", "run"]

RUN mkdir -p /usr/local/tomcat/webapps && chmod -R 777 /usr/local/tomcat/webapps
