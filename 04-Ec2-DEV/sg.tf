resource "aws_security_group" "myinstance_sg" {
  name   = "sg_${var.environment}_ec2_myinstance"
  vpc_id = var.vpc_env_id

  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = var.ssh_port
    to_port   = var.ssh_port
    protocol  = "tcp"
  }

  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}