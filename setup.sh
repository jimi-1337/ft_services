#!/bin/sh

minikube delete
minikube start

eval $(minikube docker-env)

#installing metallb
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.4/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.4/manifests/metallb.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

#creating load balancer
kubectl apply -f srcs/metal.yaml

#creating images
docker build -t nginx srcs/nginx/
docker build -t wordpress srcs/wordpress/
docker build -t phpmyadmin srcs/phpmyadmin/
docker build -t mariadb srcs/MySQL/
docker build -t influxdb srcs/influxdb/
docker build -t grafana srcs/grafana/
docker build -t ftps srcs/ftps/


#creating volumes
kubectl apply -f srcs/influxdb/influxdb-volume.yaml
kubectl apply -f srcs/MySQL/mysql-volume.yaml

#creating pods
kubectl apply -f srcs/nginx/nginx-deploy.yaml
kubectl apply -f srcs/wordpress/wordpress-deploy.yaml
kubectl apply -f srcs/phpmyadmin/phpmyadmin-deploy.yaml
kubectl apply -f srcs/MySQL/mysql-deploy.yaml
kubectl apply -f srcs/influxdb/influxdb-deploy.yaml
kubectl apply -f srcs/grafana/grafana-deploy.yaml
kubectl apply -f srcs/ftps/ftps-deploy.yaml

#creating services
kubectl apply -f srcs/wordpress/wordpress-service.yaml
kubectl apply -f srcs/phpmyadmin/phpmyadmin-service.yaml
kubectl apply -f srcs/MySQL/mysql-service.yaml
kubectl apply -f srcs/influxdb/influxdb-service.yaml
kubectl apply -f srcs/grafana/grafana-service.yaml
kubectl apply -f srcs/ftps/ftps-service.yaml
kubectl apply -f srcs/nginx/nginx-service.yaml

minikube dashboard