# #########################
# VPC / CIDR

output "vpc_env_id" {
  value = aws_vpc.vpc_env.id
}

# # #####################
# # SUBNET PRIVATE

output "subnet_private_az1_id" {
  value = aws_subnet.subnet_private_az1.id
}

output "subnet_private_az2_id" {
  value = aws_subnet.subnet_private_az2.id
}


# # #####################
# # SUBNET PUBLIC

output "subnet_public_az1_id" {
  value = aws_subnet.subnet_public_az1.id
}

output "subnet_public_az2_id" {
  value = aws_subnet.subnet_public_az2.id
}
