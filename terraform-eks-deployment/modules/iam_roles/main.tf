resource "aws_iam_role" "example_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
      Action    = "sts:AssumeRole"
    }]
  })

  // Attach policies or inline policies as needed
}

output "role_name" {
  value = aws_iam_role.example_role.name
}
