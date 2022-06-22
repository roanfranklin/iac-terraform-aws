# ##############
# EC2

resource "aws_instance" "myinstance" {
  ami                    = var.ami_ubuntu1804
  instance_type          = var.instance_type
  subnet_id              = var.subnet_public_az1_id
  vpc_security_group_ids = ["${aws_security_group.myinstance_sg.id}"]
  key_name               = var.devops_key
  user_data              = templatefile("user-data/bootstrap.sh", { 
    VAR_RDS_ENDPOINT = var.rds_endpoint_mysql,
    VAR_RDS_USERNAME = var.rds_username_mysql, 
    VAR_RDS_PASSWORD = var.rds_password_mysql,
    VAR_PORT_SSH = var.ssh_port,
    VAR_DIR_CLOUDOPSS = "/var/cloudopss"
  })
  #user_data       = file("user-data/bootstrap.sh")

  tags = {
    Name        = "application-${var.environment}"
    Environment = "${var.environment}"
  }
}

# ##############
# EIP

resource "aws_eip" "eip-instance" {
  instance = aws_instance.myinstance.id
  vpc      = true

  tags = {
    Name = "REMF-eip-ec2-myinstance-${var.environment}"
  }
}