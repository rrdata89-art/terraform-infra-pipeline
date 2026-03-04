resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

data "archive_file" "hello_world_lambda" {
  type        = "zip"
  source_file = "${path.module}/lambda_src/lambda_function.py"
  output_path = "${path.module}/hello_world_lambda.zip"
}

resource "aws_iam_role" "lambda_exec_role" {
  name = "rrdata89-art-${terraform.workspace}-hello-world-lambda-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {
  role       = aws_iam_role.lambda_exec_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_lambda_function" "hello_world" {
  function_name = "rrdata89-art-${terraform.workspace}-hello-world"
  role          = aws_iam_role.lambda_exec_role.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.11"
  filename      = data.archive_file.hello_world_lambda.output_path

  source_code_hash = data.archive_file.hello_world_lambda.output_base64sha256

  depends_on = [
    aws_iam_role_policy_attachment.lambda_basic_execution
  ]
}
