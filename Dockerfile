FROM mesosphere/zeppelin:0.6.0

MAINTAINER jeffecu88@gmail.com

RUN sudo apt-get update && \
    sudo apt-get install python-numpy python-scipy wget -y

RUN mkdir -p /opt/spark/lib

# jars used for S3A access
RUN wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.7.4/aws-java-sdk-1.7.4.jar \
  -o /opt/spark/lib/aws-java-sdk-1.7.4.jar

RUN wget http://central.maven.org/maven2/org/apache/hadoop/hadoop-aws/2.7.1/hadoop-aws-2.7.1.jar \
  -o /opt/spark/lib/hadoop-aws-2.7.1.jar

# jar used for redshift driver
RUN wget https://s3.amazonaws.com/redshift-downloads/drivers/RedshiftJDBC4-1.1.10.1010.jar -o /var/lib/RedshiftJDBC4-1.1.10.1010.jar
