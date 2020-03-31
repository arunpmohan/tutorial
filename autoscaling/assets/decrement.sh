#!/bin/bash
export CLUSTER_IP=$(kubectl get services/autoscale-service -n autoscale -o go-template='{{(index .spec.clusterIP)}}')
for i in {1..${1}}
do
   curl http://${CLUSTER_IP}:8080/decrement
   sleep 2
done
