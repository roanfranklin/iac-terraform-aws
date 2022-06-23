variable "region" {
  description = "AWS REGION in ../env.tfvars"
}

variable "environment" {
  description = "Environment in ../env.tfvars"
}

variable "service" {
  description = "AWS Service Name in ../env.tfvars"
  default = "Network"
}


variable "vpc_env_cidr" {
  description = "CIDR of VPC - Environment in ../env.tfvars"
}

# ################
# Subnets Private

variable "subnet_private_az1" {
  description = "Subnet Private - AZ A - Environment in ../env.tfvars"
}

variable "subnet_private_az2" {
  description = "Subnet Private - AZ B - Environment in ../env.tfvars"
}

# ################
# Subnets Public

variable "subnet_public_az1" {
  description = "Subnet Public - AZ A - Environment in ../env.tfvars"
}

variable "subnet_public_az2" {
  description = "Subnet Public - AZ B - Environment in ../env.tfvars"
}