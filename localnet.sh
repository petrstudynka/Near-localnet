#!/bin/bash

#------------ USAGE ------------#
# 1. sh localnet.sh init
#
# 2. Use cases:
# a) Run new localnet: "sh localnet.sh new"
# b) Continue localnet: "sh localnet.sh start"
# c) Stop localnet: "sh localnet.sh stop"
#-------------------------------#

IMAGE_NAME=pstu/neardao:latest
CONTAINER_NAME=near-localnet

case $1 in

init)
sudo docker pull $IMAGE_NAME

# copy key for NEAR-CLI
cp ./key.json ~/.near/validator_key.json
;;

new)
sudo docker stop $CONTAINER_NAME 2>/dev/null
sudo docker rm $CONTAINER_NAME 2>/dev/null
sudo docker run -d -p 3030:3030 --name $CONTAINER_NAME $IMAGE_NAME
;;

stop)
sudo docker exec -it $CONTAINER_NAME /bin/bash /root/nearup/stop.sh && sudo docker stop $CONTAINER_NAME
;;

start)
sudo docker start $CONTAINER_NAME
;;
esac