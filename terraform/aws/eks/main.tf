provider "aws" {

  region = "us-east-1"

}


variable "cluster_role_arn" {

  type = string

}


variable "node_role_arn" {

  type = string

}


variable "subnet_ids" {

  type = list(string)

}



resource "aws_eks_cluster" "main" {

  name = "three-tier-eks-cluster"


  role_arn = var.cluster_role_arn


  version = "1.30"


  vpc_config {

    subnet_ids = var.subnet_ids

  }


  depends_on = [

    var.cluster_role_arn

  ]

}



resource "aws_eks_node_group" "main" {

  cluster_name = aws_eks_cluster.main.name


  node_group_name = "three-tier-node-group"


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



  depends_on = [

    aws_eks_cluster.main

  ]

}



output "cluster_name" {

  value = aws_eks_cluster.main.name

}
