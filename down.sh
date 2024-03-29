#!/bin/sh

printf "\n\n"

chmod +x misc/progress_bar.sh

kubectl delete -f k8s/secrets.yaml > /dev/null 2>&1
kubectl delete -f k8s/nginx.yaml > /dev/null 2>&1
kubectl delete -f k8s/manifest.yaml > /dev/null 2>&1

echo "Deleting resources defined in manifest.yaml"
./misc/progress_bar.sh 0.250