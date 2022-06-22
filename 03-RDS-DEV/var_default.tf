variable "region" {
  default = "us-east-1"
}

variable "environment" {
  description = "Environment default in ../env.tfvars"
}

# ################
# VPC Subnets

variable "vpc_env_id" {
  description = "VPC de env in ../env.tfvars"
}

variable "vpc_env_cidr" {
  description = "CIDR de env in ../env.tfvars"
}


variable "subnet_private_az1_id" {
  description = "Subnet Private da AZ A - env in ../env.tfvars"
}

variable "subnet_private_az2_id" {
  description = "Subnet Private da AZ B - env in ../env.tfvars"
}


variable "subnet_public_az1_id" {
  description = "Subnet Public da AZ A - env in ../env.tfvars"
}

variable "subnet_public_az2_id" {
  description = "Subnet Public da AZ B - env in ../env.tfvars"
}


# ##############
# RDS
variable "rds_database_mysql" {
  description = "Database MySQL in ../env.tfvars"
}

variable "rds_username_mysql" {
  description = "Username database MySQL in ../env.tfvars"
}

variable "rds_password_mysql" {
  description = "Password database MySQL in ../env.tfvars"
  type        = string
  sensitive   = true
}