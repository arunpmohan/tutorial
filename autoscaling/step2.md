Access the url to make sure prometheus UI is accessible.

You can do PromQL here to see any monitored values. Type in com_autoscaling_sample_counter_count to see the graph of the count.
https://[[HOST_SUBDOMAIN]]-31334-[[KATACODA_HOST]].environments.katacoda.com/


Install prometheus adapter

`helm install -f padapter.yaml stable/prometheus-adapter --name madapter --version 2.2.0 --wait`{{execute host01}}


`kubectl apply -f autoscale.yaml -n autoscale`{{execute HOST1}}


`kubectl apply -f hpa_autoscale.yaml -n autoscale`{{execute HOST1}}


Check the metrics.This will show you a json representation of the metrics.

`kubectl get --raw /apis/custom.metrics.k8s.io/v1beta1/namespaces/autoscale/pods/*/com_autoscaling_sample_counter_count | jq .`{{execute HOST1}}

`kubectl get pods -n autoscale --watch`{{execute HOST1}}

`./increment.sh 50`{{execute HOST1}}
