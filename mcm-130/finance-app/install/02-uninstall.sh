#!/usr/bin/env bash

echo 'un-installation started .............................'

cd ../src

cd subscription
kubectl delete -f 31-subscription.yaml
kubectl delete -f 21-placement.yaml
kubectl delete -f 11-application.yaml

cd ../channel
kubectl delete -f 25-deployable-statefulset-appstore.yaml
kubectl delete -f 24-deployable-statefulset-busy-box.yaml
kubectl delete -f 23-deployable-statefulset-redis.yaml
kubectl delete -f 22-deployable-web.yaml
kubectl delete -f 21-deployable-configmap.yaml
kubectl delete -f 11-channel.yaml

cd ../a-prereq
kubectl delete -f 01-namespace.yaml

echo 'un-installation completed .............................'
