# 🚀 Deployment Guide

This document explains the deployment process of the three-tier application on AWS EKS.


# Deployment Architecture

The application deployment follows this flow:

```
Developer

    |

GitHub Repository

    |

GitHub Actions CI/CD

    |

Docker Image Build

    |

Container Registry

    |

ArgoCD

    |

Amazon EKS Cluster

    |

Application Running
```


# Prerequisites

Required tools:

- AWS CLI
- Terraform
- Docker
- kubectl
- Helm
- ArgoCD


# Infrastructure Deployment

## Initialize Terraform

```bash
cd terraform

terraform init
```


## Validate Terraform

```bash
terraform validate
```


## Plan Infrastructure

```bash
terraform plan
```


## Create AWS Infrastructure

```bash
terraform apply
```


Terraform creates:

- VPC
- IAM Roles
- Amazon EKS Cluster
- Node Groups


# Container Deployment

Build Docker images:

```bash
docker build -t frontend-app .

docker build -t backend-app .
```


Push images to container registry:

```bash
docker push <image-name>
```


# Kubernetes Deployment

Configure cluster access:

```bash
aws eks update-kubeconfig \
--name three-tier-cluster
```


Deploy application:

```bash
kubectl apply -k kubernetes/base
```


Check pods:

```bash
kubectl get pods
```


Check services:

```bash
kubectl get services
```


# Helm Deployment

Install application using Helm:

```bash
helm install three-tier-app ./helm/three-tier-app
```


# GitOps Deployment Using ArgoCD

Deployment flow:

```
Git Repository

      |

ArgoCD

      |

Kubernetes Cluster

      |

Application
```


ArgoCD automatically:

- Monitors Git changes
- Syncs Kubernetes manifests
- Maintains desired state


# Environment Promotion

The same container image is promoted across environments:

```
Development

     |

QA

     |

Production
```


The image is built once and promoted instead of rebuilding.


# Rollback

Kubernetes rollback:

```bash
kubectl rollout undo deployment/<deployment-name>
```


# Verification

Verify deployment:

```bash
kubectl get pods

kubectl get services

kubectl get ingress
```


# Monitoring

After deployment:

- Prometheus collects metrics
- Grafana displays dashboards
- Application logs are monitored
