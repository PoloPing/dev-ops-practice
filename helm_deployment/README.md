# HELM_DEPLOYMENT

**Install**

brew install kubernetes-helm

kubectl create -f . -R

helm init --history-max 200 --service-account tiller --upgrade


**Command Line**

kubectl create serviceaccount --namespace kube-system tiller

kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller

kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'      

helm init --history-max 200 --service-account tiller --upgrade

**Reference**

https://medium.com/smalltowntechblog/helm-tiller-%E9%83%A8%E7%BD%B2%E5%9C%A8-gke-%E4%B8%8A%E7%9A%84%E6%AC%8A%E9%99%90%E5%95%8F%E9%A1%8C-a016f703372e

https://jimmysong.io/kubernetes-handbook/practice/ceph-helm-install-guide-zh.html

https://helm.sh/docs/using_helm/