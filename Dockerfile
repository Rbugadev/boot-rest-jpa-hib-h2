FROM openjdk:8-jdk-stretch

VOLUME /tmp
ADD target/boot-rest-jpa-hib-h2-0.0.2-SNAPSHOT.jar myapp.jar
RUN sh -c 'touch /myapp.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/myapp.jar"]