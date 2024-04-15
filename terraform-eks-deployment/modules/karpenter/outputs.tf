output "autoscaler_id" {
  description = "ID of the created Karpenter cluster autoscaler"
  value       = karpenter_cluster_autoscaler.example_autoscaler.id
}
