Launch your kubernetes cluster with two nodes.

`launch.sh`{{execute}}

Run the following and make sure your both nodes are ready.

`kubectl get nodes`{{execute}}

Initialize helm and global chart repository.

`helm init`{{execute}}

The following command should return neither errors nor any output. But should return as a noop.

`helm ls`{{execute}}
