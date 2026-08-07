#!/bin/bash

set -e

BACKUP_DIR="./backup"

DATE=$(date +"%Y-%m-%d-%H-%M")

mkdir -p $BACKUP_DIR

echo "Starting Prometheus backup..."

kubectl get configmap prometheus-config -n monitoring \
-o yaml > $BACKUP_DIR/prometheus-config-$DATE.yaml


kubectl get secret -n monitoring \
-o yaml > $BACKUP_DIR/secrets-$DATE.yaml


echo "Backup completed successfully"

echo "Backup stored at $BACKUP_DIR"
