FROM registry.access.redhat.com/jboss-webserver-3/webserver31-tomcat7-openshift
MAINTAINER Paul Wehlage <paulwehlage@fico.com>

USER root

ENV DMP_DATA_DIR /app-root/runtime/data
ENV DMP_REPO_DIR /app-root/runtime/repo
ENV DMP_TMP_DIR /tmp
ENV DMP_LOG_DIR /opt/webserver/logs
ENV GC_MAX_METASPACE_SIZE 512
ENV JAVA_OPTIONS -XX:MaxMetaspaceSize=512m

COPY target/spring-boot-docker.war $JWS_HOME/webapps/ROOT.war
#COPY target/greeting-3.4.0-SNAPSHOT/DMP-INF/ $DMP_DATA_DIR/DMP-INF/

RUN  mkdir /app-root/ && chmod -R 777 /app-root/


#ENV JPDA_SUSPEND="y"

EXPOSE 8000
