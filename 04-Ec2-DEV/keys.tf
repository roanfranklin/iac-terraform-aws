resource "aws_key_pair" "id_rsa_devops" {
  key_name   = "id_rsa_devops"
  public_key = var.public_key
}