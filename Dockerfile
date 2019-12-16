# FROM adoptopenjdk/openjdk11
FROM openjdk:11
VOLUME /tmp
RUN mkdir /app
WORKDIR /app
COPY . /app/
RUN sh gradlew build
ENV JAVA_OPTS=""
# ENTRYPOINT [ "java", "-jar", "$JAVA_OPTS build/libs/JvmStudent-1.0-SNAPSHOT.jar" ]
ENTRYPOINT [ "java", "-jar", "build/libs/JvmStudent-1.0-SNAPSHOT.jar" ]

