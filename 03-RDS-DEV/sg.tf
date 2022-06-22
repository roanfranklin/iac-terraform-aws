# ##############
# RDS MySQL

resource "aws_security_group" "env-aurora-sg" {
  name = "sg_${var.environment}_rds_aurora_mysql"
  vpc_id = var.vpc_env_id

  ingress {
    protocol    = "tcp"
    from_port   = 3306
    to_port     = 3306
    cidr_blocks = [
      var.vpc_env_cidr
    ]
  }

  egress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}