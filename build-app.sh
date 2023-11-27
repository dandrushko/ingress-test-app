#!/usr/bin/env bash
docker build -t ingress-test:0.0 .
docker tag ingress-test:0.0 infra.dt.vmw.run/apps/ingress-test:0.0
docker push infra.dt.vmw.run/apps/ingress-test:0.0
kubectl apply -f k8s-resources.yaml
