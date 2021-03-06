#!/bin/bash

# TARGET must be set when deployed to an Apcera cluster.
if [ -z "$TARGET" ]; then
    echo "$0:Please set the TARGET environment variable"
    exit 1
else
    echo "$0: TARGET CLUSTER is ${TARGET}";echo
fi
MASTER="http://master.apcera.local:8080"
JENKINS_HOME=/var/jenkins_home


java -jar /cli.jar -fsroot ${JENKINS_HOME}/workspace -master ${MASTER} -executors 1
