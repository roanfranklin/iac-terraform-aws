# # ##########################################################
# # RDS Subnet_Group

resource "aws_db_subnet_group" "env-dbsng" {
  name       = "${var.environment}-db-subnet-group-rds-mysql"
  subnet_ids = [
    var.subnet_private_az1_id,
    var.subnet_private_az2_id
  ]

  tags = {
    Name = "${var.environment}-db-subnet-group-rds-mysql"
  }
}

# ##############
# RDS AURORA - MySQL

resource "aws_rds_cluster" "cluster" {
  depends_on         = [aws_db_subnet_group.env-dbsng]
  cluster_identifier     = var.rds_cluster_name
  availability_zones     = ["${var.region}b"]
  engine                 = var.rds_engine
  engine_version         = var.rds_engine_version
  database_name          = var.rds_database_mysql
  master_username        = var.rds_username_mysql
  master_password        = var.rds_password_mysql
  vpc_security_group_ids = ["${aws_security_group.env-aurora-sg.id}"]
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.env-dbsng.name
}

resource "aws_rds_cluster_instance" "cluster_instances" {
  depends_on         = [aws_rds_cluster.cluster]
  identifier         = "${var.rds_cluster_name}-instance"
  cluster_identifier = aws_rds_cluster.cluster.id
  availability_zone  = "${var.region}b"
  instance_class     = var.rds_instance_class
  engine             = var.rds_engine
  engine_version     = var.rds_engine_version
  #writer = true
  db_subnet_group_name = aws_db_subnet_group.env-dbsng.name
  #publicly_accessible  = true
}

# # ##############
# # RDS 

# resource "aws_db_instance" "mydb" {
#   allocated_storage      = 10
#   engine                 = var.rds_engine_other
#   engine_version         = var.rds_engine_version_other
#   instance_class         = var.rds_instance_class
#   name                   = var.rds_database_mysql
#   username               = var.rds_username_mysql
#   password               = var.rds_password_mysql
#   parameter_group_name   = var.rds_parameter_group_name
#   skip_final_snapshot    = true
#   vpc_security_group_ids = ["${aws_security_group.env-aurora-sg.id}"]
# }