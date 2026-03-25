FROM tomcat:9.0-jdk11

LABEL maintainer="SRE DevOps Team"
LABEL description="Tomcat container for Java WAR application"

ENV APP_TYPE=Java
ENV COMPANY_IT=IT
ENV COMPANY_EMAIL=career.zain@gmail.com

# Remove default Tomcat apps (best practice)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR built by Maven
COPY target/*.war /usr/local/tomcat/webapps/java-application.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
