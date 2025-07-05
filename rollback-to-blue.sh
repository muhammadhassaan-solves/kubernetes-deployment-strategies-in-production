#!/bin/bash
echo "Rolling back to Blue..."
kubectl patch service sample-app-service -p '{"spec":{"selector":{"app":"sample-app","version":"v1"}}}'
kubectl get endpoints sample-app-service
