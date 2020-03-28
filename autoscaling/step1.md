Launch your kubernetes cluster with two nodes.

`launch.sh`{{execute}}

Run the following and make sure your both nodes are ready.

`kubectl get nodes`{{execute}}

Initialize helm and global chart repository.

`helm init`{{execute}}

The following command should return neither errors nor any output. But should return as a noop.

`helm ls`{{execute}}

Get Prometheus customization files.

`curl -O https://raw.githubusercontent.com/arunpmohan/tutorial/master/autoscaling/prometheus/prometheus.yaml`{{execute}}

Install Prometheus Agent.

`helm install -f prometheus.yaml stable/prometheus --version 11.0.4 --name pm`{{execute}}

Make sure prometheus server is up by waiting till pod shows 1/1 as status.

`kubectl get pods --watch`{{execute}}
