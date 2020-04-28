zip:
	cd ../iota-lambda-dynamo; zip ../terraform/lambda_function_dynamo_payload.zip iota-lambda-dynamo.py
	cd ../iota-lambda; zip ../terraform/lambda_function_payload.zip iota-lambda.py

init:
	terraform init

plan:
	terraform plan

apply:
	terraform apply -lock=false -auto-approve

destroy:
	terraform apply -lock=false -auto-approve

clean:
	rm terraform.tfstate terraform.tfstate.backup *.zip

all: zip init apply

export SERVICES=dynamodb,iam,lambda
localstack:
	localstack start
