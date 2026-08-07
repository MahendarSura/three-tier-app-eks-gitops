# 🏗️ Architecture

This document explains the architecture of the three-tier application, request flow, infrastructure components, and deployment strategy.


# Application Overview

The application follows a three-tier architecture:

- Frontend Layer
- Backend Layer
- Database Layer


# Architecture Diagram

![Architecture Diagram](images/architecture.png)


# Request Path

Traffic arrives at an Application Load Balancer provisioned by the AWS Load Balancer Controller.

The ALB routes incoming requests to a Kubernetes Ingress resource.

The Ingress forwards traffic to Kubernetes services, which distribute requests to application pods running inside Amazon EKS.

The application pods retrieve database connection details from Kubernetes Secrets and communicate with the MySQL database.


# Request Flow

```
User

 |

AWS Application Load Balancer

 |

AWS Load Balancer Controller

 |

Kubernetes Ingress

 |

Frontend Service

 |

Frontend Pods

 |

Backend API Service

 |

Backend Pods

 |

MySQL Database
```


# Environment Promotion

QA and production environments use the same container image.

The deployment process follows:

```
Source Code

      |

Docker Image Build

      |

Security Scan

      |

QA Deployment

      |

Production Deployment
```


The image is built once, tested in QA, and promoted to production.

The same artifact is deployed across environments instead of rebuilding.


# Why Retag Rather Than Rebuild

Rebuilding creates a different container artifact from the one that passed testing.

Even when source code remains the same, changes can occur because of:

- Base image updates
- Dependency version changes
- Package changes
- Build environment differences


Retagging guarantees that the exact tested image is promoted to production.

This improves:

- Deployment reliability
- Environment consistency
- Release confidence


# Infrastructure Components


## ☁️ AWS Components

Used AWS services:

- Amazon EKS
- Amazon VPC
- IAM
- Application Load Balancer
- AWS Load Balancer Controller


## ☸️ Kubernetes Components

Used Kubernetes resources:

- Deployments
- Pods
- Services
- Ingress
- Secrets
- ConfigMaps


## 🚀 DevOps Components

Deployment workflow uses:

- Docker
- GitHub Actions
- Helm
- ArgoCD
- Terraform


# Security Architecture

Security practices implemented:

- IAM based access control
- Kubernetes Secrets for sensitive data
- Container vulnerability scanning using Trivy
- Infrastructure deployment using Terraform
- Kubernetes security policies
- Environment based configuration


# Monitoring & Observability

Monitoring stack:

- Prometheus
- Grafana
- Application logs
- Cloud monitoring


Provides:

- Application metrics
- Resource monitoring
- Deployment visibility
- Troubleshooting support


# High Level Deployment Flow

```
Developer

    |

GitHub Repository

    |

GitHub Actions CI/CD

    |

Docker Image Build

    |

Trivy Security Scan

    |

Container Registry

    |

ArgoCD GitOps Deployment

    |

Amazon EKS Cluster

    |

Production Application
```


# Architecture Benefits

This architecture provides:

- Scalable application deployment
- Automated CI/CD workflow
- Consistent releases
- Infrastructure automation
- Secure cloud deployment
- Easy monitoring and maintenance
