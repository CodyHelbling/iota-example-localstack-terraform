import boto3


def lambda_handler(event, context):
    session = boto3.session.Session()

    try:
        dynamo_client = session.client(
            service_name='dynamodb',
            aws_access_key_id='test',
            aws_secret_access_key='test',
            endpoint_url='http://localhost:4569',
        )

        dynamo_client.put_item(
            TableName='iota_table',
            Item={'Id': {'S': 'someid'}})

        response = dynamo_client.describe_table(TableName='iota_table')

        return {
            'statusCode': 200,
            'body': response
        }

    except Exception as e:
        print(f"Exception: {e}")

        return {
            'statusCode': 500,
            'body': 'See exception printed in the console where localstack is running.'
        }
