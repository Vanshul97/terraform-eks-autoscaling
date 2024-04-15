variable "cluster_name" {
  description = "Name of the EKS cluster to autoscale"
  type        = string
}

variable "min_replicas" {
  description = "Minimum number of replicas for autoscaling"
  type        = number
  default     = 1
}

variable "max_replicas" {
  description = "Maximum number of replicas for autoscaling"
  type        = number
  default     = 10
}

variable "scale_up_threshold" {
  description = "Scale up threshold percentage"
  type        = number
  default     = 70
}

variable "scale_down_threshold" {
  description = "Scale down threshold percentage"
  type        = number
  default     = 30
}
    