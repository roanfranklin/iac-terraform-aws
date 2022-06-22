# table lock DynamoDB
resource "aws_dynamodb_table" "remf-terraform-locks" {
  name         = "remf-terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
