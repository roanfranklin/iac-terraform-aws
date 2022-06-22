# ##############
# EC2

output "myinstance_env_public_ip" {
 value = aws_eip.eip-instance.public_ip
}

output "myinstance_env_public_dns" {
  value = aws_eip.eip-instance.public_dns
}

# output "myinstance_env_public_ip" {
#  value = aws_instance.myinstance.public_ip
# }

# output "myinstance_env_public_dns" {
#   value = aws_instance.myinstance.public_dns
# }

# ###############
# IAM

#output "new_user_access_key_id" {
#  value = aws_iam_access_key.devs3.id
#}

#output "new_user_secret_access_key" {
#  value     = aws_iam_access_key.devs3.secret
#  sensitive = true
#}
