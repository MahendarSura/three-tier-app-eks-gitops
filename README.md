# 🚀 Three-Tier Application on AWS EKS with DevSecOps Pipeline

![AWS](https://img.shields.io/badge/AWS-Cloud-orange)
![Kubernetes](https://img.shields.io/badge/Kubernetes-EKS-blue)
![Terraform](https://img.shields.io/badge/Terraform-IaC-purple)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-black)
![License](https://img.shields.io/badge/License-MIT-green)

A production-style three-tier application deployed on **Amazon EKS** using modern DevOps practices including:

- Infrastructure as Code (Terraform)
- Containerization with Docker
- Kubernetes orchestration
- GitHub Actions CI/CD
- GitOps deployment workflow
- Monitoring and Security automation


---

# 🏗️ Architecture


```
                 Users
                   |
                   |
              AWS ALB
                   |
          AWS Load Balancer Controller
                   |
              Kubernetes Ingress
                   |
        -------------------------
        |                       |
    Frontend Pod            Backend Pod
      React                 Node.js API
        |                       |
        -------- Service --------
                   |
              MySQL Database
```


Traffic enters through the AWS Application Load Balancer and is routed to Kubernetes services running inside Amazon EKS.

The application follows a three-tier architecture:

- Frontend Layer → React Application
- Application Layer → Node.js / Express API
- Database Layer → MySQL


---

# 🔄 DevSecOps Pipeline


```
Developer Push
       |
       |
   GitHub Repository
       |
       |
 GitHub Actions CI/CD
       |
       |
 Docker Image Build
       |
       |
 Security Scan (Trivy)
       |
       |
 Push Image Registry
       |
       |
 Deploy to Kubernetes
       |
       |
 Amazon EKS Cluster
```


The same container image is promoted across environments instead of rebuilding.

This ensures:

✅ Tested artifact is deployed  
✅ Consistent deployments  
✅ Reduced environment differences  


---

# 🛠️ Tech Stack


## Application

- React
- Node.js
- Express.js
- MySQL


## Cloud & Infrastructure

- AWS
- Amazon EKS
- VPC
- IAM
- Application Load Balancer


## Containers & Orchestration

- Docker
- Kubernetes
- Helm


## Infrastructure as Code

- Terraform


## CI/CD & GitOps

- GitHub Actions
- ArgoCD


## Monitoring & Security

- Prometheus
- Grafana
- Trivy
- DevSecOps Practices


---

# 📂 Repository Structure


```
three-tier-app-eks-gitops/

├── src/
│   ├── client/        # React frontend
│   └── server/        # Node.js backend API
│
├── docker/
│   ├── Dockerfiles
│   └── docker-compose.yml
│
├── kubernetes/
│   ├── base/
│   └── overlays/
│       ├── dev/
│       ├── staging/
│       └── prod/
│
├── terraform/
│   ├── aws/
│   ├── modules/
│   └── environments/
│
├── helm/
│   └── three-tier-app/
│
├── argocd/
│
├── monitoring/
│
├── logging/
│
├── security/
│
└── tests/
```


---

# 💻 Running Locally


Clone repository:


```bash
git clone <repository-url>

cd three-tier-app-eks-gitops
```


Create environment file:


```bash
cp .env.example .env
```


Run application:


```bash
docker compose up --build
```


Application will be available at:


```
http://localhost:5000
```


---

# ☁️ AWS EKS Deployment


Initialize Terraform:


```bash
terraform init
```


Validate configuration:


```bash
terraform validate
```


Deploy infrastructure:


```bash
terraform apply
```


Deploy Kubernetes resources:


```bash
kubectl apply -k kubernetes/base
```


---

# 🔐 Security Implementation


Implemented security practices:


✅ Container vulnerability scanning with Trivy  
✅ Infrastructure security using Terraform  
✅ Kubernetes security policies  
✅ CI/CD security checks  
✅ Environment-based deployments  


---

# 📊 Monitoring & Observability


Monitoring stack:


- Prometheus
- Grafana
- Cloud monitoring
- Application logs


Provides:

- Application metrics
- Resource monitoring
- Deployment visibility


---

# 🧪 Testing


Unit tests:


```bash
pytest tests/unit
```


Integration tests:


```bash
pytest tests/integration
```


---

# 📚 What I Learned


Building this project helped me understand real-world DevOps implementation:

- Designing AWS infrastructure using Terraform
- Deploying applications on Amazon EKS
- Building CI/CD automation pipelines
- Managing Kubernetes environments
- Implementing GitOps workflows
- Applying DevSecOps security practices


The biggest learning was maintaining the same tested artifact across environments.

Building once and promoting the same image reduces deployment failures and eliminates environment-related issues.


---

# 🤝 Contributions


Feel free to fork this repository, raise issues, and suggest improvements.


---

# 📄 License


MIT License


---

⭐ If you find this project useful, consider giving it a star.
