export POD_NAME=$(kubectl get pods --namespace kube-public -l "app=grafana,release=grafana" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace kube-public port-forward $POD_NAME 3000
