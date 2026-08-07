# Three-Tier Application on AWS EKS with DevSecOps Pipeline

![CI](https://img.shields.io/badge/CI-GitHub%20Actions-blue)
![Cloud](https://img.shields.io/badge/Cloud-AWS-orange)
![Container](https://img.shields.io/badge/Container-Docker-blue)
![Orchestration](https://img.shields.io/badge/Orchestration-Kubernetes-blue)

A production-style three-tier application deployed on Amazon EKS with automated CI/CD,
Infrastructure as Code and GitOps practices.

The project demonstrates how modern cloud-native applications are built, secured,
deployed and managed using DevOps best practices.

---

## 🏗️ Architecture

The application follows a three-tier architecture:

                Users
                  |
                  |
         AWS Application Load Balancer
                  |
                  |
          Kubernetes Ingress
                  |
    --------------------------------
    |                              |
Frontend Pods                 Backend Pods
 React App                   Express API
                                  |
                                  |
                           MySQL Database

                           
Infrastructure is provisioned using Terraform and workloads are deployed on Amazon EKS.

The deployment process follows a CI/CD and GitOps workflow where application changes
are automatically tested, built, scanned and promoted across environments.

---

## 🛠️ Tech Stack

### Cloud & Infrastructure

- Amazon Web Services (AWS)
- Amazon EKS
- VPC
- IAM
- ALB Load Balancer
- Terraform

### Application

- React
- Node.js
- Express
- MySQL

### Containers & Deployment

- Docker
- Kubernetes
- Helm

### CI/CD & GitOps

- GitHub Actions
- ArgoCD
- GitOps Workflow

### Security & Monitoring

- Trivy
- SonarQube
- Prometheus
- Grafana

---

## 📂 Repository Structure


src/
├── client/ # React frontend
└── server/ # Express backend

k8s/
├── dev/ # Development manifests
├── qa/ # QA environment
└── prod/ # Production manifests

terraform/
├── network/
├── eks/
└── infrastructure/

helm/
└── application charts

docs/
└── architecture documentation

.github/
└── CI/CD workflows


---

---

## 🚀 Running Locally

Clone repository:

```bash
git clone <repository-url>
cd three-tier-app-eks-gitops

Create environment file:

cp .env.example .env

Run application:

docker compose up --build

Application will be available:

http://localhost:5000
🔄 CI/CD Pipeline Flow
Developer Push
      |
      |
GitHub Actions
      |
      |
Build Docker Image
      |
      |
Security Scan
      |
      |
Push Image Registry
      |
      |
Deploy to Kubernetes
      |
      |
ArgoCD GitOps Sync
🔐 Security Implementation
Container image scanning using Trivy
Code quality checks
Kubernetes security practices
IAM based access control
Secure secrets management
Infrastructure security using Terraform
📚 What I Learned

This project helped me understand real-world DevOps practices including:

Building production-style AWS infrastructure
Managing Kubernetes workloads on EKS
Creating reusable Terraform modules
Implementing GitOps deployment strategy
Automating CI/CD pipelines
Improving application security through DevSecOps practices
🤝 Contribution

Contributions, suggestions and improvements are welcome.

Please read:

CONTRIBUTING.md
CODE_OF_CONDUCT.md
SECURITY.md

before submitting changes.

📄 License

MIT License


---

# SECURITY.md

```md
# Security Policy

## Supported Versions

The latest stable version of this project is currently supported.

Security updates will be provided for actively maintained versions.

---

## Reporting a Vulnerability

If you discover a security issue:

- Do not create a public GitHub issue.
- Report it privately through GitHub Security Advisories.
- Provide details about the vulnerability and steps to reproduce.

The issue will be reviewed and addressed as soon as possible.

Thank you for helping improve the security of this project.
CONTRIBUTING.md
# Contributing

Thank you for contributing to this project.

## Branch Naming

Create branches from the main branch using these naming conventions:


feature/ New features
fix/ Bug fixes
docs/ Documentation updates
ci/ CI/CD workflow changes
refactor/ Code improvements
chore/ Configuration changes


Example:


feature/add-monitoring
fix/database-connection
docs/update-readme


---

## Commit Convention

Follow Conventional Commit format:


type(scope): description


Examples:


feat(api): add authentication support

fix(k8s): update deployment configuration

docs(readme): improve documentation


---

## Pull Requests

Before creating a pull request:

- Keep changes focused
- Explain what was changed
- Mention testing details
- Ensure CI pipeline passes
- Request review before merging

---

## Development Guidelines

- Write clean and maintainable code
- Follow project structure
- Avoid committing secrets
- Update documentation when required
CODE_OF_CONDUCT.md
# Code of Conduct

## Our Commitment

We are committed to creating an open, respectful and professional environment
for everyone contributing to this project.

Everyone participating in this community is expected to:

- Be respectful
- Communicate professionally
- Accept constructive feedback
- Respect different opinions and experiences

---

## Unacceptable Behaviour

Examples include:

- Harassment or personal attacks
- Offensive language
- Discrimination
- Publishing private information
- Disruptive behaviour in project discussions

---

## Enforcement

Project maintainers are responsible for maintaining community standards.

Actions may include:

## 1. Correction

Community Impact:

Unprofessional language or behaviour that negatively affects the community.

Consequence:

A private warning will be provided explaining the issue and expected improvement.

---

## 2. Warning

Community Impact:

Repeated or more serious violations.

Consequence:

A formal warning may be issued and continued violations may result in restricted participation.

---

## 3. Temporary Ban

Community Impact:

Serious violations or repeated inappropriate behaviour.

Consequence:

Temporary restriction from project communication and contribution activities.

---

## 4. Permanent Ban

Community Impact:

Repeated violations, harassment or behaviour that seriously damages the community.

Consequence:

Permanent removal from project participation.

---

## Reporting

Reports can be submitted privately to project maintainers.

All reports will be handled respectfully and confidentially.

---

## Attribution

This Code of Conduct is inspired by the Contributor Covenant
community guidelines.
LICENSE
MIT License

Copyright (c) 2026 Mahendar Sura

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction.

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
CHANGELOG.md
# Changelog

All notable changes to this project are documented here.

## [Unreleased]

### Added

- Three-tier application architecture
- AWS EKS deployment setup
- Terraform infrastructure automation
- Kubernetes manifests
- GitHub Actions CI/CD pipeline
- GitOps deployment workflow using ArgoCD
- Security scanning integration
- Project documentation
- Contribution guidelines
- Security policy
- Code of Conduct

### Improved

- Repository structure organization
- Deployment workflow documentation

