# FROM adoptopenjdk/openjdk11
FROM openjdk:11
VOLUME /tmp
RUN mkdir /app
WORKDIR /app
COPY . /app/
RUN sh gradlew build
# ENV JAVA_OPTS=""
# ENTRYPOINTなどの実行するものはENVが適切
# ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar build/libs/JvmStudent-1.0-SNAPSHOT.jar" ]
ENTRYPOINT [ "sh", "-c", "echo $JAVA_OPTS && java $JAVA_OPTS -jar build/libs/JvmStudent-1.0-SNAPSHOT.jar & bash /app/jstat.sh" ]
