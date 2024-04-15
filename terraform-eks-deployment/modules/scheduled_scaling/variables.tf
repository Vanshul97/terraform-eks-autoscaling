variable "scheduled_action_name" {
  description = "Name of the scheduled autoscaling action"
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

variable "recurrence" {
  description = "Recurrence pattern for the scheduled action (in cron format)"
  type        = string
}

variable "autoscaling_group_name" {
  description = "Name of the autoscaling group"
  type        = string
}
