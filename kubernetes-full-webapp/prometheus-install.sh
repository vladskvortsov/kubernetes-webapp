


helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm repo update

helm install prometheus prometheus-community/kube-prometheus-stack


helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm install prometheus prometheus-community/prometheus-mysql-exporter




kubectl apply -f mysql-secret.yaml
kubectl apply -f mysql-configmap.yaml
kubectl apply -f phpmyadmin.yaml
kubectl apply -f mysql.yaml







kubectl port-forward deployment/prometheus-grafana 3000

kubectl port-forward service/mongodb-exporter-prometheus-mongodb-exporter 9216


minikube service phpmyadmin-service
