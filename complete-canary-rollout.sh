#!/bin/bash
echo "Completing canary rollout..."
echo "Scaling canary version to full capacity..."

kubectl scale deployment sample-app-v3 --replicas=3
kubectl scale deployment sample-app-v1 --replicas=0

echo "Rollout completed!"
kubectl get deployments
