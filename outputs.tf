# output.tf

output "vpc_id" {
  description = "The ID of the main VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_1_id" {
  description = "The ID of Public Subnet 1"
  value       = aws_subnet.public_1.id
}

output "public_subnet_2_id" {
  description = "The ID of Public Subnet 2"
  value       = aws_subnet.public_2.id
}

output "private_subnet_1_id" {
  description = "The ID of Private Subnet 1"
  value       = aws_subnet.private_1.id
}

output "private_subnet_2_id" {
  description = "The ID of Private Subnet 2"
  value       = aws_subnet.private_2.id
}

output "private_subnet_3_id" {
  description = "The ID of Private Subnet 3"
  value       = aws_subnet.private_3.id
}

output "private_subnet_4_id" {
  description = "The ID of Private Subnet 4"
  value       = aws_subnet.private_4.id
}

output "nat_gateway_id" {
  description = "The ID of the NAT Gateway"
  value       = aws_nat_gateway.nat.id
}

output "rds_instance_endpoint" {
  description = "The endpoint of the RDS MySQL instance"
  value       = aws_db_instance.mysql.address
}

output "rds_instance_port" {
  description = "The port of the RDS MySQL instance"
  value       = aws_db_instance.mysql.port
}

output "rds_instance_username" {
  description = "The master username of the RDS MySQL instance"
  value       = aws_db_instance.mysql.username
  sensitive   = true # Mark as sensitive to prevent showing in plain text in console
}

output "rds_security_group_id" {
  description = "The ID of the RDS security group"
  value       = aws_security_group.rds_sg.id
}

output "eks_cluster_name" {
  description = "The name of the EKS Cluster"
  value       = aws_eks_cluster.main.name
}

output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS Cluster API"
  value       = aws_eks_cluster.main.endpoint
}

output "eks_cluster_certificate_authority_data" {
  description = "The base64 encoded certificate data required to communicate with your cluster"
  value       = aws_eks_cluster.main.certificate_authority[0].data
  sensitive   = true
}

output "eks_cluster_role_arn" {
  description = "The ARN of the IAM role for the EKS Cluster"
  value       = aws_iam_role.eks_cluster_role.arn
}

output "eks_nodegroup_role_arn" {
  description = "The ARN of the IAM role for the EKS Node Group"
  value       = aws_iam_role.eks_nodegroup_role.arn
}

output "eks_node_group_status" {
  description = "The status of the EKS Node Group"
  value       = aws_eks_node_group.main.status
}
