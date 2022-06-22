# terraform {
#   required_version = ">= 1.0.4"
#   backend "s3" {
#     bucket         = "remf-terraform-state"
#     key            = "DEV/RDS/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "remf-terraform-locks"
#     encrypt        = true
#   }
# }

provider "aws" {
  region = var.region
}