
Kubernetes should be running and you can make sure of the by running the following

Run the following and make sure your both nodes are ready.

`kubectl get nodes`{{execute HOST1}}


Install Prometheus Agent.

`helm install -f prometheus.yaml stable/prometheus --version 11.0.4 --name monitoring --wait`{{execute HOST1}}


Install ingress controller
`helm install -f ingress.yaml stable/nginx-ingress --version 1.34.2 --wait`{{execute HOST1}}

`kubectl get pods`{{execute HOST1}}

Access the url to make sure basic 404 page is displayed.

https://[[HOST_SUBDOMAIN]]-32334-[[KATACODA_HOST]].environments.katacoda.com/
