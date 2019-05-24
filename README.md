# DEV-OPS-PRACTICE

kubectl, kubens, kubectx, helm, vagrant


**STEP 1 - RUN CLUSTER**

1. cd kubernetes-vagrant-centos-cluster
2. vagrant up

**STEP 2 - INSTALL HELM**

1. see the README in helm_deployment

**STEP 3 - INSTALL NGINX**

1. kubectl create namespace test
2. helm install --name simple-nginx simple-nginx
3. see http://172.17.8.101:30037/ if works

![Alt text](pictures/step3-1.png?raw=true)

**STEP 4 - INSTALL PROMETHUES**

1. kubectl create namespace monitor
2. kubens monitor
3. helm install --name prometheus prometheus

**STEP 5 - INSTALL GRAFANA**

1. helm install --name grafana grafana
2. add prometheus data source

![Alt text](pictures/step5-1.png?raw=true)

![Alt text](pictures/step5-2.png?raw=true)

3. add source url

![Alt text](pictures/step5-3.png?raw=true)

4. import dashboard

![Alt text](pictures/step5-4.png?raw=true)

![Alt text](pictures/step5-5.png?raw=true)

![Alt text](pictures/step5-6.png?raw=true)