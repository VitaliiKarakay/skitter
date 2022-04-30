#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/skitter-frank.pem \
    target/sweater-1.0-SNAPSHOT.jar \
    ec2-user@ec2-35-158-174-147.eu-central-1.compute.amazonaws.com:/home/ec2-user/

echo 'Restart server...'

ssh -i ~/.ssh/skitter-frank.pem ec2-user@ec2-35-158-174-147.eu-central-1.compute.amazonaws.com << EOF

pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'