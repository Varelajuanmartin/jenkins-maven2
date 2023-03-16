#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /home/ubuntu/.ssh/remote_key /tmp/.auth ubuntu@100.25.137.33:/tmp/.auth
scp -i /home/ubuntu/.ssh/remote_key ./jenkins/deploy/publish ubuntu@100.25.137.33:/tmp/publish
ssh -i /home/ubuntu/.ssh/remote_key ubuntu@100.25.137.33 "/tmp/publish"
