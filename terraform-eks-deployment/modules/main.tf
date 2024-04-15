provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source        = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
}

module "eks_cluster" {
  source        = "./modules/eks_cluster"
  cluster_name  = var.cluster_name
  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.vpc.private_subnet_ids
}

module "alb_ingress_controller" {
  source        = "./modules/alb_ingress_controller"
  cluster_name  = var.cluster_name
  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.vpc.public_subnet_ids
}

module "applications" {
  source        = "./modules/applications"
  cluster_name  = var.cluster_name
  eks_kubeconfig = module.eks_cluster.kubeconfig
}

module "vault_integration" {
  source        = "./modules/vault_integration"
  // Add necessary variables here
}

module "autoscaling" {
  source          = "./modules/autoscaling"
  // Add necessary variables here
}

module "scheduled_autoscaling" {
  source          = "./modules/scheduled_autoscaling"
  // Add necessary variables here
}

module "iam_roles" {
  source          = "./modules/iam_roles"
  // Add necessary variables here
}

module "secrets_management" {
  source          = "./modules/secrets_management"
  // Add necessary variables here
}

module "karpenter" {
  source          = "./modules/karpenter"
  // Add necessary variables here
}
