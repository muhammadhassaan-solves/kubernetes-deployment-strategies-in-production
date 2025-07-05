#!/bin/bash
echo "Rolling back canary deployment..."
echo "Scaling stable version back to full capacity..."

kubectl scale deployment sample-app-v1 --replicas=3
kubectl scale deployment sample-app-v3 --replicas=0

echo "Rollback completed!"
kubectl get deployments
