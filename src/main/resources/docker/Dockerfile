#FROM java:8
#VOLUME /tmp
#ADD piccashop.jar piccashop.jar
#RUN bash -c 'touch /piccashop.jar'
##ARG JAR_FILE
##COPY ${JAR_FILE} piccashop.jar
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","piccashop.jar"]


FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080 8093
ADD piccashop.jar piccashop.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=docker","-jar","piccashop.jar"]