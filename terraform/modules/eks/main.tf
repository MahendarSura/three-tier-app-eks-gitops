resource "aws_eks_cluster" "main" {

  name = "three-tier-eks"

  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

}
