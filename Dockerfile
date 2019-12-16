# FROM adoptopenjdk/openjdk11
FROM openjdk:11
VOLUME /tmp
RUN mkdir /app
WORKDIR /app
COPY . /app/
RUN sh gradlew build
# ENV JAVA_OPTS=""
# ENTRYPOINTなどの実行するものはENVが適切
# ARG JAVA_OPTS
# ENTRYPOINT [ "java", "-jar", "build/libs/JvmStudent-1.0-SNAPSHOT.jar", "${JAVA_OPTS}" ]
ENTRYPOINT [ "sh", "-c", "java ${JAVA_OPS} -jar build/libs/JvmStudent-1.0-SNAPSHOT.jar" ]
# ENTRYPOINT [ "java", "-jar", "build/libs/JvmStudent-1.0-SNAPSHOT.jar" ]

