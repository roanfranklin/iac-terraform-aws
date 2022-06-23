# # Create a VPC
resource "aws_vpc" "vpc_env" {
  cidr_block           = var.vpc_env_cidr
  
  enable_dns_hostnames = true
  enable_dns_support   = true
  assign_generated_ipv6_cidr_block = true

  tags = {
    Name = "REMF-VPC-${var.environment}"
  }
}