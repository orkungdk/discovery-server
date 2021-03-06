FROM openjdk:8-jdk-alpine

ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app

EXPOSE 8761
ENTRYPOINT ["java","-cp","app:app/lib/*", "tr.com.ogedik.discoveryserver.DiscoveryServerApplication"]

MAINTAINER orkungedik90@gmail.com