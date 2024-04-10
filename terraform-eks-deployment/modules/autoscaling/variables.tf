variable "autoscaling_group_name" {
  description = "Name of the autoscaling group"
  type        = string
}

variable "min_size" {
  description = "Minimum number of instances in the autoscaling group"
  type        = number
}

variable "max_size" {
  description = "Maximum number of instances in the autoscaling group"
  type        = number
}

variable "desired_capacity" {
  description = "Desired number of instances in the autoscaling group"
  type        = number
}

variable "image_id" {
  description = "AMI ID for the instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the instances"
  type        = string
}

variable "security_groups" {
  description = "List of security group IDs for the instances"
  type        = list(string)
}

variable "key_name" {
  description = "SSH key pair name for the instances"
  type        = string
}

variable "user_data" {
  description = "User data script for the instances"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where instances will be launched"
  type        = list(string)
}

variable "scaling_adjustment" {
  description = "Number of instances to add or remove when scaling"
  type        = number
}

variable "cooldown" {
  description = "Cooldown period for autoscaling policies (in seconds)"
  type        = number
}
