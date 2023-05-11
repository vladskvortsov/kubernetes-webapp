


helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm repo update

helm install prometheus prometheus-community/kube-prometheus-stack


helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm install mysql-exporter prometheus-community/prometheus-mysql-exporter



kubectl apply -f .


kubectl port-forward deployment/prometheus-grafana 3000

kubectl port-forward service/mysql-exporter-prometheus-mysql-exporter 9104


minikube service phpmyadmin-service
