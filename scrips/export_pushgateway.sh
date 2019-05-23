export POD_NAME=$(kubectl get pods --namespace kube-public -l "app=prometheus,component=pushgateway" -o jsonpath="{.items[0].metadata.name}")
kubectl --namespace kube-public port-forward $POD_NAME 9091
