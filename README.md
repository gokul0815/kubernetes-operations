# Kubernetes example
Creating the “mandatory” resources for Nginx Ingress in your cluster.
```bash
$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml
```
enable the ingress add-on for Minikube
```bash
$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/provider/cloud-generic.yaml
```
To check all pods setup(Ingress)
```bash
$ kubectl get pods --all-namespaces -l app=ingress-nginx
$ kubectl apply -f apple.yaml
$ kubectl apply -f banana.yaml
```
Declaring ingress route for apple and banana
```bash
$ kubectl create -f ingress.yaml
```
## Usage
```bash
$ curl -kL http://localhost/apple
apple
```
```bash
$ curl -kL http://localhost/banana
banana
```
```bash
$ curl -kL http://localhost/notfound
default backend - 404
```