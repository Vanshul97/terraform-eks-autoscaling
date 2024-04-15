resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_name
  role_arn = var.eks_cluster_role_arn
  version  = var.kubernetes_version

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  enabled_cluster_log_types = var.cluster_log_types

  depends_on = [
    module.vpc
  ]
}

resource "aws_eks_node_group" "eks_node_group" {
  for_each = var.node_groups

  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = each.value.name
  node_role_arn   = each.value.node_role_arn
  subnet_ids      = var.subnet_ids
  instance_types  = each.value.instance_types
  ami_type        = each.value.ami_type
  capacity_type   = "SPOT"  # Use spot instances for node groups

  scaling_config {
    desired_size = each.value.desired_size
    min_size     = each.value.min_size
    max_size     = each.value.max_size
  }

  depends_on = [
    aws_eks_cluster.eks_cluster
  ]
}

output "eks_cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}
