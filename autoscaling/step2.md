export CLUSTER_IP=$(kubectl get services/autoscale-service -o go-template='{{(index .spec.clusterIP)}}')
