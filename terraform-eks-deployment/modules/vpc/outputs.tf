output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.eks_vpc.id
}

output "subnet_ids" {
  description = "IDs of the created subnets"
  value       = aws_subnet.eks_subnets[*].id
}
