#!/bin/bash

# ==========================================
# Project Environment Setup Script
# ==========================================

# Script err/fail aithe ventane stop avvadaniki
set -e

echo "🚀 Starting System & Environment Setup..."

# 1. System Packages Update & Basic Utilities Installation
echo "📦 Updating package index and installing basic utilities..."
sudo apt-get update -y
sudo apt-get install -y curl wget unzip git jq

# 2. Docker Installation Check
if ! command -v docker &> /dev/null; then
    echo "🐳 Docker not found. Installing Docker..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
    sudo usermod -aG docker $USER
    rm get-docker.sh
else
    echo "✅ Docker is already installed."
fi

# 3. AWS CLI Installation Check
if ! command -v aws &> /dev/null; then
    echo "☁️ AWS CLI not found. Installing AWS CLI v2..."
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip -q awscliv2.zip
    sudo ./aws/install
    rm -rf awscliv2.zip aws/
else
    echo "✅ AWS CLI is already installed."
fi

# 4. Kubectl Installation Check
if ! command -v kubectl &> /dev/null; then
    echo "☸️ Kubectl not found. Installing Kubectl..."
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    rm kubectl
else
    echo "✅ Kubectl is already installed."
fi

# 5. Terraform Installation Check
if ! command -v terraform &> /dev/null; then
    echo "🏗️ Terraform not found. Installing Terraform..."
    wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
    sudo apt-get update && sudo apt-get install terraform -y
else
    echo "✅ Terraform is already installed."
fi

# 6. Helm Installation Check
if ! command -v helm &> /dev/null; then
    echo "⛵ Helm not found. Installing Helm..."
    curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
else
    echo "✅ Helm is already installed."
fi

# 7. Local Configuration Check (.env file creation)
if [ ! -f .env ]; then
    echo "📄 Creating .env file from .env.example..."
    cp .env.example .env
    echo "⚠️ Please update the .env file with your actual secrets/credentials."
fi

echo "🎉 Environment Setup Completed Successfully!"
