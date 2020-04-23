# Lab

Customizations

## Harbor Reference

Update harbor reference build.sh (10 places)

## Helm Customizations

export WAVEFRONT_URI=https://longboard.wavefront.com
export WAVEFRONT_API_TOKEN=YOUR_TOKEN
export WAVEFRONT_APPLICATION_NAME=YOUR_NAME Todos Application
export IMAGE_REPOSITORY=harbor.lab.winterfell.live/workshop-alana
export INGRESS_URL=workshop.pks.lab.winterfell.live
export NAMESPACE=workshop-alana

helm install --dry-run --debug todos ./todos-chart \
    --set wavefront.apiToken=$WAVEFRONT_API_TOKEN \
    --set wavefront.uri=$WAVEFRONT_URI \
    --set wavefront.application.name="$WAVEFRONT_APPLICATION_NAME" \
    --set imageRepository=$IMAGE_REPOSITORY \
    --set ingressUrl=$INGRESS_URL \
    --set namespace=$NAMESPACE
    
helm install todos ./todos-chart \
    --set wavefront.apiToken=$WAVEFRONT_API_TOKEN \
    --set wavefront.uri=$WAVEFRONT_URI \
    --set wavefront.application.name="$WAVEFRONT_APPLICATION_NAME" \
    --set imageRepository=$IMAGE_REPOSITORY \
    --set ingressUrl=$INGRESS_URL \
    --set namespace=$NAMESPACE
    
helm upgrade todos ./todos-chart \
    --set wavefront.apiToken=$WAVEFRONT_API_TOKEN \
    --set wavefront.uri=$WAVEFRONT_URI \
    --set wavefront.application.name="$WAVEFRONT_APPLICATION_NAME" \
    --set imageRepository=$IMAGE_REPOSITORY \
    --set ingressUrl=$INGRESS_URL \
    --set namespace=$NAMESPACE

helm delete todos
