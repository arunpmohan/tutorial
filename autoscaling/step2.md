Access the url to make sure prometheus UI is accessible.

You can do PromQL here to see any monitored values. Type in com_autoscaling_sample_counter_count to see the graph of the count.
https://[[HOST_SUBDOMAIN]]-31334-[[KATACODA_HOST]].environments.katacoda.com/


Install prometheus adapter

`helm install -f padapter.yaml stable/prometheus-adapter --name madapter --version 2.2.0 --wait`{{execute}}

Check the metrics.This will show you a json representation of the metrics.

`kubectl get --raw /apis/custom.metrics.k8s.io/v1beta1/namespaces/default/pods/*/com_autoscaling_sample_counter_count | jq .`{{execute}}
