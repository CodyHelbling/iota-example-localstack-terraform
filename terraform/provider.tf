provider "aws" {
  endpoints {
    dynamodb = "http://localhost:4569"
    iam = "http://localhost:4593"
    lambda = "http://localhost:4574"
  }
}
