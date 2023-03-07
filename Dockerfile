FROM openjdk:8-jre-alpine
MAINTAINER zhuzzb zhu_zhibin@outlook.com
EXPOSE 8080
COPY WakeOnLan-0.0.1-SNAPSHOT.jar app.jar
ENV IP=网络的广播地址 MAC=需要唤醒的电脑的网卡mac地址 CLINT=在巴法平台的私钥 TOPIC=MQTT设备云的主题
ENTRYPOINT ["sh", "-c", "java -Dwake.ip=$IP -Dwake.mac=$MAC -Dwake.clint=$CLINT -Dwake.topic=$TOPIC -jar /app.jar"]