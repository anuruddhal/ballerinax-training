## Deploy Kubernetes Resources

kubectl create namespace wso2
kubectl apply -f nginx-ingress/namespaces/nginx-ingress.yaml -Rf nginx-ingress
kubectl create -f service.yaml
kubectl create -f deployment.yaml
kubectl create -f ingress.yaml



### To Access the Ballerina Service

#### Nodeport
kubectl get svc -n wso2
NAME         TYPE       CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
helloworld   NodePort   10.97.247.125   <none>        9090:32100/TCP   49s

curl http://127.0.0.1:32100/helloWorld/sayHello

#### Ingress
kubectl get ingress -n wso2

Result:
NAME                 HOSTS        ADDRESS          PORTS     AGE
helloworld-ingress   test.k8.com   104.154.45.225   80        4m


Add the following host mapping to /etc/hosts file.

104.154.45.225 test.k8.com

http://test.k8.com/helloWorld/sayHello
