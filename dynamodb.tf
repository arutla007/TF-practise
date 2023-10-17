resource "aws_dynamodb_table" "myfirst-dynamodb-table" {
  name     = "firstdatabase"
  hash_key = "UserId"

  attribute {
    name = "lockId"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}