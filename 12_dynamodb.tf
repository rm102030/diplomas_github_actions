resource "aws_dynamodb_table" "my_first_table" {
  name         = var.aws_dynamodb_app
  billing_mode = var.table_billing_mode
  hash_key     = "id"
  attribute {
    name = "id"
    type = "S"
  }
}