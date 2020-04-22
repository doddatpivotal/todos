: ${WAVEFRONT_API_TOKEN?"Need to set WAVEFRONT_API_TOKEN environment variable"}
: ${WAVEFRONT_URI?"Need to set WAVEFRONT_URI environment variable"}
: ${WAVEFRONT_APPLICATION_NAME?"Need to set WAVEFRONT_APPLICATION_NAME environment variable"}
: ${IMAGE_REPOSITORY?"Need to set IMAGE_REPOSITORY environment variable"}
: ${INGRESS_URL?"Need to set INGRESS_URL environment variable"}

helm repo add bitnami https://charts.bitnami.com/bitnami
helm install my-postgres bitnami/postgresql --set postgresqlPassword=topsecret --set service.type=LoadBalancer
helm install todo-redis-instance bitnami/redis --set global.redis.password=topsecret
helm install todos ./todos-chart \
    --set wavefront.apiToken=$WAVEFRONT_API_TOKEN \
    --set wavefront.uri=$WAVEFRONT_URI \
    --set wavefront.application.name="$WAVEFRONT_APPLICATION_NAME" \
    --set imageRepository=$IMAGE_REPOSITORY \
    --set ingressUrl=$INGRESS_URL
