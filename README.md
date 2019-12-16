# JvmStudent
### jarの作成
gradle build

### jar実行
java -jar ./build/libs/JvmStudent-1.0-SNAPSHOT.jar 

### dockerビルド
docker build -t jvm-student .

### docker実行1
docker run -d jvm-student
// docker run -d jvm-student --build-arg JAVA_OPTS="-XX:+UseConcMarkSweepGC" 
docker run -d --env JAVA_OPTS="-XX:+UseConcMarkSweepGC" jvm-student

 * UseSerialGC
 * UseParallelGC
 * UseG1GC
 * UseConcMarkSweepGC // どうしよう

### docker実行2
docker-compose up

### dockerコンテナへ接続
docker exec -it (CONTAINER_ID) bash


## JVM
### Javaプロセス番号を調べる
jps -l
### 実行中のVMの状態（設定）を調べる
jcmd (プロセスID) VM.flags
### gcの状況を調べる 
jstat -gc (プロセスID)
jstat -gccause  (プロセスID)


## MEMO
### Flight Recorder
https://qiita.com/masanori0001/items/95bfa0898447d8d4774e
