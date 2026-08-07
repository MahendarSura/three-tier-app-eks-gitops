resource "aws_eks_node_group" "nodes" {

  cluster_name = var.cluster_name

  node_role_arn = var.node_role_arn

  subnet_ids = var.subnet_ids


  scaling_config {

    desired_size = 2

    max_size = 3

    min_size = 1

  }


  instance_types = [
    "t3.medium"
  ]


  capacity_type = "ON_DEMAND"


  tags = {

    Name = "three-tier-node-group"

  }

}resource "aws_eks_node_group" "nodes" {

 cluster_name = var.cluster_name

 node_role_arn = var.node_role_arn

 subnet_ids = var.subnet_ids

 scaling_config {

  desired_size = 2
  max_size = 3
  min_size = 1

 }

}
