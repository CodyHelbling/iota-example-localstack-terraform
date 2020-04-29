module "iota-lambda" {
  source        = "../iota-lambda/terraform"
}

module "iota-lambda-dynamo" {
  source        = "../iota-lambda-dynamo/terraform"
  dynamo_table_arn  = aws_dynamodb_table.iota_table.arn
}
