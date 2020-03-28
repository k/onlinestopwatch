#!/bin/bash

IMAGE=kbambridge/onlinestopwatch:$TAG

docker build . -t $IMAGE && \
docker push $IMAGE && \
sed -i.bak "s/appVersion: \(.*\)/appVersion: $TAG/" charts/onlinestopwatch/Chart.yaml
helm upgrade --kube-context=kbamrbridge@sandbox.us-west-2.eksctl.io --namespace=onlinestopwatch onlinestopwatch charts/onlinestopwatch
