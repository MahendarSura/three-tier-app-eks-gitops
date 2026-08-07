module "vpc" {
  source = "./modules/vpc"

  environment = var.environment
  vpc_cidr    = var.vpc_cidr
}


module "iam" {
  source = "./modules/iam"
}


module "eks" {
  source = "./modules/eks"

  cluster_role_arn = module.iam.eks_role_arn
  subnet_ids       = module.vpc.subnet_ids
}


module "node-group" {
  source = "./modules/node-group"

  cluster_name = module.eks.cluster_name
  node_role_arn = module.iam.node_role_arn
  subnet_ids = module.vpc.subnet_ids
}
