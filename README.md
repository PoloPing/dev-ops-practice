# dev-ops-pgratice

**STEP 1 - RUN CLUSTER**

1. cd kubernetes-vagrant-centos-cluster
2. vagrant up

**STEP 2 - INSTALL HELM**

1. see the README in helm_deployment

**STEP 3 - INSTALL NGINX**

1. kubectl create namespace test
2. helm install --name simple-nginx simple-nginx
3. see http://172.17.8.101:30037/ if works
