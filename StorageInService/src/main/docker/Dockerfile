#指定运行环境为java运行环境，并且jdk版本为8
FROM openjdk:8-jre

#将本地文件夹挂在到当前容器，这样可以使若干个DockerImages共享数据
VOLUME /tmp

#将需要运行的文件拷贝到Docker容器内 ADD microservice-discovery-eureka-0.0.1-SNAPSHOT.jar /app.jar
ADD storage-in-service-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c "touch /app.jar"

#开放2222端口
EXPOSE 8400

# 配置容器启动后执行的命令
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]