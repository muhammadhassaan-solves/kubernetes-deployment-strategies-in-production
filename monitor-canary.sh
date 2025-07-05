#!/bin/bash
echo "Monitoring Canary Deployment..."
echo "================================"

# Use Minikube's internal IP (accessible from EC2 host)
MINIKUBE_IP="192.168.49.2"
PORT="30080"
TOTAL_REQUESTS=100

# Function to get version distribution
get_version_stats() {
    local v1_count=0
    local v3_count=0

    echo "Sending $TOTAL_REQUESTS requests to http://$MINIKUBE_IP:$PORT ..."

    for i in $(seq 1 $TOTAL_REQUESTS); do
        response=$(curl -s http://$MINIKUBE_IP:$PORT | grep -o "Version [0-9.]*" | grep -o "[0-9.]*")
        if [[ "$response" == "1.0" ]]; then
            ((v1_count++))
        elif [[ "$response" == "3.0" ]]; then
            ((v3_count++))
        fi
    done

    echo ""
    echo "Results:"
    echo "  Version 1.0 (Stable): $v1_count requests ($(( v1_count * 100 / TOTAL_REQUESTS ))%)"
    echo "  Version 3.0 (Canary): $v3_count requests ($(( v3_count * 100 / TOTAL_REQUESTS ))%)"
}

# Show pod status
echo ""
echo "Pod Status:"
kubectl get pods -l app=sample-app -o wide

echo ""
echo "Service Endpoints:"
kubectl get endpoints sample-app-service

echo ""
get_version_stats
