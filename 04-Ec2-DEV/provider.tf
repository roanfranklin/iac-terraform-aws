# terraform {
#   required_version = ">= 1.0.4"
#   backend "s3" {
#     bucket         = "remf-terraform-state"
#     key            = "DEV/EC2-myinstance/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "remf-terraform-locks"
#     encrypt        = true
#   }
# }

provider "aws" {
  region = var.region

  # Localstack
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_use_path_style           = true
}