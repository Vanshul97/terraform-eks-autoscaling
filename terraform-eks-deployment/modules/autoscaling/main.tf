resource "aws_autoscaling_group" "example_autoscaling_group" {
  name             = var.autoscaling_group_name
  min_size         = var.min_size
  max_size         = var.max_size
  desired_capacity = var.desired_capacity
  launch_configuration = aws_launch_configuration.example_launch_configuration.name
  vpc_zone_identifier  = var.subnet_ids
}

resource "aws_launch_configuration" "example_launch_configuration" {
  name                 = "example-launch-configuration"
  image_id             = var.image_id
  instance_type        = var.instance_type
  security_groups      = var.security_groups
  key_name             = var.key_name
  user_data            = var.user_data
}

resource "aws_autoscaling_policy" "example_autoscaling_policy" {
  name                   = "scale-up"
  scaling_adjustment     = var.scaling_adjustment
  adjustment_type        = "ChangeInCapacity"
  cooldown               = var.cooldown
  autoscaling_group_name = aws_autoscaling_group.example_autoscaling_group.name
}

output "autoscaling_group_name" {
  value = aws_autoscaling_group.example_autoscaling_group.name
}
