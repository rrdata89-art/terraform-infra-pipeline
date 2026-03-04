import json

# Lambda function handler - Apenas para teste de initial commit do lambda
def lambda_handler(event, context):
    print("hello world")

    return {
        "statusCode": 200,
        "body": json.dumps("hello world"),
    }
