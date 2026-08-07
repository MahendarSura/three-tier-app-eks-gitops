resource "aws_eks_cluster" "main" {

  name = "three-tier-eks"

  version = "1.30"

  role_arn = var.cluster_role_arn


  vpc_config {

    subnet_ids = var.subnet_ids

  }


  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator"
  ]

}resource "aws_eks_cluster" "main" {

  name = "three-tier-eks"

  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

}
