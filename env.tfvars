region = "us-east-1"

environment = "dev"

vpc_env_cidr = "10.1.0.0/16"
subnet_private_az1  = "10.1.0.0/20"
subnet_private_az2 = "10.1.16.0/20"
subnet_public_az1 = "10.1.48.0/20"
subnet_public_az2 = "10.1.64.0/20"

rds_database_mysql = "wordpress"
rds_username_mysql = "myuser"
rds_password_mysql = "MySQL2022"

# ex.: cat ~/.ssh/id_rsa.pub
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"

# #########################################################################
# #########################################################################
# OUTPUTS

# OUTPUT 02-Network-DEV
subnet_private_az1_id = "subnet-d95a3fbc"
subnet_private_az2_id = "subnet-7cd29216"
subnet_public_az1_id = "subnet-ac8f24b8"
subnet_public_az2_id = "subnet-ce178640"
vpc_env_id = "vpc-2588c43c"

# OUTPUT 03-RDS-DEV
rds_endpoint_mysql = "192.168.26.26"

# OUTPUT 04-Ec2-DEV
myinstance_env_public_dns = "ec2-127-140-231-232.compute-1.amazonaws.com"
myinstance_env_public_ip = "127.140.231.232"