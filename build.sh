mvn clean install
docker build -t azwickey/todos-edge todos-edge/
docker tag azwickey/todos-edge harbor.tanzu.cloud.zwickey.net/library/todos-edge:latest
docker push harbor.tanzu.cloud.zwickey.net/library/todos-edge:latest

docker build -t azwickey/todos-webui todos-webui/
docker tag azwickey/todos-webui harbor.tanzu.cloud.zwickey.net/library/todos-webui:latest
docker push harbor.tanzu.cloud.zwickey.net/library/todos-webui:latest

docker build -t azwickey/todos-api todos-api/
docker tag azwickey/todos-api harbor.tanzu.cloud.zwickey.net/library/todos-api:latest
docker push harbor.tanzu.cloud.zwickey.net/library/todos-api:latest

docker build -t azwickey/todos-edge todos-redis/
docker tag azwickey/todos-redis harbor.tanzu.cloud.zwickey.net/library/todos-redis:latest
docker push harbor.tanzu.cloud.zwickey.net/library/todos-redis:latest

docker build -t azwickey/todos-mysql todos-mysql/
docker tag azwickey/todos-mysql harbor.tanzu.cloud.zwickey.net/library/todos-mysql:latest
docker push harbor.tanzu.cloud.zwickey.net/library/todos-mysql:latest