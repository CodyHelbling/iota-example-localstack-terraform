resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_lambda_function" "iota_lambda_dynamo" {
  filename         = "lambda_function_dynamo_payload.zip"
  function_name    = "iota_lambda_dynamo"
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = "iota-lambda-dynamo.lambda_handler"
  source_code_hash = "${filebase64("lambda_function_dynamo_payload.zip")}"
  runtime          = "python3.6"

  environment {
    variables = {
      foo = "bar"
    }
  }
}
