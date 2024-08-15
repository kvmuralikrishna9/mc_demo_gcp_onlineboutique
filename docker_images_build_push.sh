#!/bin/bash

Username="kvmuralikrishna9/gcpms"
Source="/home/murali/Downloads/git_repo/microservices-demo/src"
Version="v1.0"

docker build -t ${Username}/adservice:${Version} ${Source}/adservice && docker push ${Username}/adservice:${Version}

docker build -t ${Username}/adservice:${Version} ${Source}/cartservice/src/ && docker push ${Username}/cartservice:${Version}

docker build -t ${Username}/checkoutservice:${Version} ${Source}/checkoutservice && docker push ${Username}/checkoutservice:${Version}