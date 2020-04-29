resource "aws_dynamodb_table" "iota_table" {
  name           = "iota_table_2"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "Id"

  attribute {
    name = "Id"
    type = "S"
  }

  tags = {
    Name        = "iota-dynamodb-table "
    Environment = "local"
  }
}
