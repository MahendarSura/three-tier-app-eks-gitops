.PHONY: help build run test clean docker-build docker-run terraform-init terraform-plan terraform-apply deploy

help:
	@echo "Available commands:"
	@echo " make build            - Build Docker images"
	@echo " make run              - Run application locally"
	@echo " make test             - Run application tests"
	@echo " make docker-build     - Build Docker image"
	@echo " make terraform-init   - Initialize Terraform"
	@echo " make terraform-plan   - Terraform execution plan"
	@echo " make terraform-apply  - Apply Terraform changes"
	@echo " make deploy           - Deploy application to Kubernetes"
	@echo " make clean            - Cleanup resources"


build:
	docker compose build


run:
	docker compose up


test:
	npm test


docker-build:
	docker build -t three-tier-app .


docker-run:
	docker run -p 5000:5000 three-tier-app


terraform-init:
	cd terraform && terraform init


terraform-plan:
	cd terraform && terraform plan


terraform-apply:
	cd terraform && terraform apply


deploy:
	kubectl apply -f k8s/


clean:
	docker compose down
