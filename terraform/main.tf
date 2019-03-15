provider "aws" {
  //  When alias is set, it creates an additional provider configuration.
  //  For providers that have no required configuration arguments, the implied empty configuration is considered to be
  //  the default provider configuration.
//  alias = "localstack"

  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_requesting_account_id  = true

  region = "us-west-2"

  endpoints = {
    dynamodb = "http://localhost:4569"
    iam = "http://localhost:4593"
    lambda = "http://localhost:4574"
  }
}

//provider "aws" {
//  //  The provider block without alias set is known as the default provider configuration.
//  region = "us-west-2"
//}

module "iota-lambda" {
  source        = "../iota-lambda/terraform"
}

module "iota-lambda-dynamo" {
  source        = "../iota-lambda-dynamo/terraform"
  dynamo_table  = "${aws_dynamodb_table.iota_table.arn}"
}