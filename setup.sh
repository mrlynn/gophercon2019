#!/bin/bash
# basic setup script to automate preparation of an environment for a golang project
echo "Project name: \c"
read ans
mkdir -p ./${ans}
export GOPATH=${PWD}/${ans}
echo "Current working directory and GOPATH: ${GOPATH}"
cd ./${ans}
mkdir src pkg bin
go get go.mongodb.org/mongo-driver

