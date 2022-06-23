# ################
# VPC

variable "vpc_env_cidr" {
  description = "CIDR of VPC - Environment"
}

# ################
# Subnets Private

variable "subnet_private_az1" {
  description = "Subnet Private - AZ A - Environment"
}

variable "subnet_private_az2" {
  description = "Subnet Private - AZ B - Environment"
}

# ################
# Subnets Public

variable "subnet_public_az1" {
  description = "Subnet Public - AZ A - Environment"
}

variable "subnet_public_az2" {
  description = "Subnet Public - AZ B - Environment"
}