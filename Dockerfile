FROM tomcat:9.0-jdk11
LABEL maintainer="SRE Devops for Java application"
LABEL description="This Dockerfile is used to customize a Java application"
LABEL author="Zain Khan"
LABEL email="zaink8282@gmail.com"
ENV APP_TYPE=Java
ENV COMPANY_IT=IT
ENV COMPANY_EMAIL="career.zain@gmail.com"
COPY java-application.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
