FROM mesosphere/zeppelin:0.6.0

MAINTAINER jeffecu88@gmail.com

RUN sudo apt-get update && \
    sudo apt-get install python-numpy python-scipy -y


# jars used for S3A access
RUN curl https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.7.4/aws-java-sdk-1.7.4.jar \
  -o $SPARK_HOME/lib/aws-java-sdk-1.7.4.jar

RUN curl http://central.maven.org/maven2/org/apache/hadoop/hadoop-aws/2.7.1/hadoop-aws-2.7.1.jar \
  -o $SPARK_HOME/lib/hadoop-aws-2.7.1.jar
