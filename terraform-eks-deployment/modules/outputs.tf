output "eks_cluster_endpoint" {
  value = module.eks_cluster.endpoint
}

output "eks_cluster_kubeconfig" {
  value = module.eks_cluster.kubeconfig
}

