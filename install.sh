helm repo add bitnami https://charts.bitnami.com/bitnami
helm install todo-mysql-instance bitnami/mariadb --set rootUser.password=topsecret
helm install todo-redis-instance bitnami/redis --set global.redis.password=topsecret
kubectl apply -f todos-mysql/app.yml
kubectl apply -f todos-redis/app.yml
kubectl apply -f todos-api/app.yml
kubectl apply -f todos-webui/app.yml
kubectl apply -f todos-edge/app.yml