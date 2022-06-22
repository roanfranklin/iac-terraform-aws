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
