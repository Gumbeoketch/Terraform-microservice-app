output "cluster_name" {
  description = "Amazon Web Service EKS Cluster Name"
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for Amazon Web Service EKS "
  value = module.eks.cluster_endpoint
}

output "region" {
  description = "Amazon Web Service EKS Cluster region"
  value = var.region
}

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.rds.endpoint
}

output "alb_dns_name" {
  description = "ALB DNS Name"
  value       = aws_lb.app_lb.dns_name
}



output "cluster_security_group_id" {
  description = "Security group ID for the Amazon Web Service EKS Cluster "
  value = module.eks.cluster_security_group_id
}