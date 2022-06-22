# ################
# Ec2

variable "instance_type" {
  default = "t3a.micro"
}

variable "ami_ubuntu1804" {
  description = "AMI Ubuntu 18.04"
  default     = "ami-0d57c0143330e1fa7"
}

variable "ssh_port" {
  description = "Change port SSH"
  # default = "7122"
  default = "22"
}

variable "devops_key" {
  default = "id_rsa_devops"
}

# ##############
# S3

