output "scheduled_action_name" {
  description = "Name of the scheduled autoscaling action"
  value       = aws_autoscaling_schedule.example_autoscaling_schedule.scheduled_action_name
}
