#creating the “mandatory” resources for Nginx Ingress in your cluster.
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml
#enable the ingress add-on for Minikube
minikube addons enable ingress
#To check all pods setup(Ingress)
kubectl get pods --all-namespaces -l app=ingress-nginx
#
kubectl apply -f apple.yaml
#
kubectl apply -f banana.yaml
#Declaring ingress route for apple and banana
kubectl create -f ingress.yaml
