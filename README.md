# JvmStudent
### jarの作成
gradle build

### jar実行
java -jar ./build/libs/JvmStudent-1.0-SNAPSHOT.jar 

### dockerビルド
docker build -t jvm-student .

### docker実行
docker run -d jvm-student
// docker run -d jvm-student --build-arg JAVA_OPTS="-XX:+UseConcMarkSweepGC" 
docker run -d jvm-student --env JAVA_OPTS="-XX:+UseConcMarkSweepGC"

### dockerコンテナへ接続
docker exec -it (CONTAINER_ID) bash
