FROM openjdk:8-jdk-alpine
COPY /target/spring-petclinic-1.5.2.jar /home/spring-petclinic-1.5.2.jar
CMD ["java","-jar","/home/spring-petclinic-1.5.2.jar"]
