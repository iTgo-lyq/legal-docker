FROM openjdk:11

COPY /application /root/app
EXPOSE 2021
CMD ["java", "-jar", "/root/app/legal.jar"]