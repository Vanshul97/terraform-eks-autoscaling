variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

// Add other variables as needed
