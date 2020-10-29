./mvnw clean install -DskipTests

# WARNING: Update the two values below to your specific use case
export LOCAL_NAME=dpfeffer
export HARBOR_PROJECT=harbor.stormsend.tkg-vsphere-haas-261.winterfell.live/todos

docker build -t $LOCAL_NAME/todos-edge todos-edge/
docker tag $LOCAL_NAME/todos-edge $HARBOR_PROJECT/todos-edge:latest
docker push $HARBOR_PROJECT/todos-edge:latest

docker build -t $LOCAL_NAME/todos-webui todos-webui/
docker tag $LOCAL_NAME/todos-webui $HARBOR_PROJECT/todos-webui:latest
docker push $HARBOR_PROJECT/todos-webui:latest

docker build -t $LOCAL_NAME/todos-api todos-api/
docker tag $LOCAL_NAME/todos-api $HARBOR_PROJECT/todos-api:latest
docker push $HARBOR_PROJECT/todos-api:latest

docker build -t $LOCAL_NAME/todos-redis todos-redis/
docker tag $LOCAL_NAME/todos-redis $HARBOR_PROJECT/todos-redis:latest
docker push $HARBOR_PROJECT/todos-redis:latest

docker build -t $LOCAL_NAME/todos-postgres todos-postgres/
docker tag $LOCAL_NAME/todos-postgres $HARBOR_PROJECT/todos-postgres:latest
docker push $HARBOR_PROJECT/todos-postgres:latest