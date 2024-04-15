output "eks_cluster_name" {
  description = "Name of the created EKS cluster"
  value       = aws_eks_cluster.eks_cluster.name
}
