
Kubernetes should be running and you can make sure of the by running the following

Run the following and make sure your both nodes are ready.

`kubectl get nodes`{{execute}}

Run helm check to make sure it just works without errors.

`helm ls`{{execute}}

Install Prometheus Agent.

`helm install -f prometheus.yaml stable/prometheus --version 11.0.4 --name monitoring`{{execute}}

Make sure prometheus server is up by waiting till pod shows 1/1 as status.

Install ingress controller
`helm install -f ingress.yaml stable/nginx-ingress`{{execute}}

`kubectl get pods --watch`{{execute}}

Access the url to make sure basic 404 page is displayed.

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/
