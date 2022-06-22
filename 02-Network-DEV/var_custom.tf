# ################
# VPC

variable "cidr_env" {
  description = "CIDR of VPC - Environment"
  default     = "10.1.0.0/16"
}

# ################
# Subnets Private

variable "subnet_private_az1" {
  description = "Subnet Private - AZ A - Environment"
  default     = "10.1.0.0/20"
}

variable "subnet_private_az2" {
  description = "Subnet Private - AZ B - Environment"
  default     = "10.1.16.0/20"
}

# ################
# Subnets Public

variable "subnet_public_az1" {
  description = "Subnet Public - AZ A - Environment"
  default     = "10.1.48.0/20"
}

variable "subnet_public_az2" {
  description = "Subnet Public - AZ B - Environment"
  default     = "10.1.64.0/20"
}