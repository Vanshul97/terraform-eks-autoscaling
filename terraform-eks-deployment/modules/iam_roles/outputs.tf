resource "aws_iam_role" "example_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
      Action    = "sts:AssumeRole"
    }]
  })

  // Example inline policy for EKS cluster access
  inline_policy {
    name = "eks-cluster-access"

    policy = jsonencode({
      Version   = "2012-10-17"
      Statement = [{
        Effect    = "Allow"
        Action    = [
          "eks:DescribeCluster",
          "eks:ListNodegroups",
          "eks:ListUpdates",
          "eks:ListFargateProfiles"
        ]
        Resource  = "*"
      }]
    })
  }

  // Example managed policy attachment for S3 access
  managed_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  ]
}

output "role_name" {
  value = aws_iam_role.example_role.name
}
