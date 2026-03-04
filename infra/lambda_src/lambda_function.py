import json

# Lambda function handler - apenas TESTE
def lambda_handler(event, context):
    print("hello world")

    return {
        "statusCode": 200,
        "body": json.dumps("hello world"),
    }
