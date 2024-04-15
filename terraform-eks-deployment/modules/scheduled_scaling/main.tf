resource "aws_autoscaling_schedule" "example_autoscaling_schedule" {
  scheduled_action_name  = var.scheduled_action_name
  min_size               = var.min_size
  max_size               = var.max_size
  desired_capacity       = var.desired_capacity
  recurrence             = var.recurrence
  autoscaling_group_name = var.autoscaling_group_name
}

output "scheduled_action_name" {
  value = aws_autoscaling_schedule.example_autoscaling_schedule.scheduled_action_name
}
