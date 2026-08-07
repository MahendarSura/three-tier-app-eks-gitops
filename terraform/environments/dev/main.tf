terraform {

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

}

provider "aws" {
  region = "us-east-1"
}


module "vpc" {
  source = "../../modules/vpc"
}


module "eks" {
  source = "../../modules/eks"

  cluster_role_arn = ""
  subnet_ids = []
}


module "iam" {
  source = "../../modules/iam"
}


module "node-group" {
  source = "../../modules/node-group"

  cluster_name = "three-tier-eks"
  node_role_arn = ""
  subnet_ids = []
}

