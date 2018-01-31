FROM registry.access.redhat.com/jboss-webserver-3/webserver30-tomcat8-openshift
# Sample tomcat instance fictious hardening based on an official RH image
# Remove comments below to enable additional options
ENV ENV=DEV
LABEL env="DEV"
# Modify default shutdown parameters
RUN sed -i 's/8005/9598/g' ${JWS_HOME=}/conf/server.xml
    # Add Secure flag in cookie
    #sed -i 's/<Connector/<Connector Secure="true"/g' ${JWS_HOME=}/conf/server.xml
#Remove redundant apps and unsecure configurations
#RUN rm -rf ${JWS_HOME=}/webapps/* ; \
    #rm -rf ${JWS_HOME=}/work/Catalina/localhost/* ; \
    #rm -rf ${JWS_HOME=}/conf/Catalina/localhost/*
# Start Tomcat with Security Manager
# CMD ["${JWS_HOME=}/bin/startup.sh -security"]