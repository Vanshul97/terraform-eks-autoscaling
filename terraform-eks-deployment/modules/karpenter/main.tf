provider "karpenter" {
  // Karpenter provider configuration
}

resource "karpenter_cluster_autoscaler" "example_autoscaler" {
  cluster_name       = var.cluster_name
  min_replicas       = var.min_replicas
  max_replicas       = var.max_replicas
  scale_up_threshold = var.scale_up_threshold
  scale_down_threshold = var.scale_down_threshold
}
