# ##############
# RDS AURORA

variable "rds_cluster_name" {
  default = "rds-env-cluster-mysql"
}

variable "rds_instance_class" {
  default = "db.t3.medium"
}

variable "rds_engine" {
  default = "aurora-mysql"
}

variable "rds_engine_version" {
  default = "5.7.12"
}

# ##############
# RDS

variable "rds_name" {
  default = "rds-env-mysql"
}

variable "rds_engine_other" {
  default = "mysql"
}

variable "rds_engine_version_other" {
  default = "5.7"
}

variable "rds_parameter_group_name" {
  default = "default.mysql5.7"
}