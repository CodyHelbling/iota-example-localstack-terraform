import boto3
import json
from utility import make_prettier

session = boto3.session.Session()

lambda_client = session.client(
    service_name='lambda',
    aws_access_key_id='test',
    aws_secret_access_key='test',
    endpoint_url='http://localhost:4574',
)

# Call iota_lambda
response = lambda_client.invoke(FunctionName='iota_lambda')
parsed_payload = make_prettier(response['Payload'].read())
print(f"iota-lambda response: {parsed_payload}")

# Call iota_lambda_dynamo
response = lambda_client.invoke(FunctionName='iota_lambda_dynamo')
parsed_payload = make_prettier(response['Payload'].read())
print(f"iota-lambda-dynamo response: {parsed_payload}")
