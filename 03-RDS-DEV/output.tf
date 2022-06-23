# # #################
# # RDS AURORA

# output "rds_endpoint_mysql" {
#   value = aws_rds_cluster_instance.cluster_instances.endpoint
# }


# # #################
# # RDS

# output "rds_endpoint_mysql" {
#   value = aws_db_instance.mydb.endpoint
# }



output "vpc_security_group_ids" {
  value = aws_security_group.env-rds-sg.id
}