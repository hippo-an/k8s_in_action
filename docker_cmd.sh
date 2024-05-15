#!/bin/bash

docker image build -t kubia .

docker container run -d --name kubia-container -p 8080:8080 --rm kubia

docker container ps

docker container exec -it kubia-container bash -c ls -al

docker container stop kubia-container

docker container ls -a