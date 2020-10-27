#!/usr/bin/env bash

echo 'installation started .............................'

cd ../src

cd a-prereq
kubectl apply -f 01-namespace.yaml

cd ../channel
kubectl apply -f 11-channel.yaml
kubectl apply -f 21-deployable-configmap.yaml
kubectl apply -f 22-deployable-web.yaml
kubectl apply -f 23-deployable-statefulset-appstore.yaml

cd ../subscription
kubectl apply -f 11-application.yaml
kubectl apply -f 21-placement.yaml
kubectl apply -f 31-subscription.yaml

echo 'installation completed .............................'
