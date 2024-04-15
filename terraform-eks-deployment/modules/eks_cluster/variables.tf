variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "eks_cluster_role_arn" {
  description = "ARN of the IAM role for the EKS cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Version of Kubernetes for the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where EKS cluster will be deployed"
  type        = list(string)
}

variable "cluster_log_types" {
  description = "List of cluster log types to enable"
  type        = list(string)
}

variable "node_groups" {
  description = "List of node groups for the EKS cluster"
  type        = list(object({
    name           = string
    node_role_arn  = string
    instance_types = list(string)
    ami_type       = string
    desired_size   = number
    min_size       = number
    max_size       = number
  }))
}
