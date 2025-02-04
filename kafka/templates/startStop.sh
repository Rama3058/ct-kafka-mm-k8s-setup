#!/bin/sh

if [ $1 == 'start' ]
then
sh ../bin/zookeeper-server-start.sh -daemon ../config/zookeeper.properties
sh ../bin/kafka-server-start.sh ../config/server.properties

while read line; do
    if [ sh kafka-topics.sh --describe --zookeeper $1:2181 --topic $line  == *_"$Error"_*]
    then
        sh kafka-topics.sh --create --zookeeper $2:2181 --partitions 8 --replication-factor 1 --topic $line
    fi
done < kafka_topics.txt

else
        sh ../bin/kafka-server-stop.sh
        sh ../bin/zookeeper-server-stop.sh
fi
