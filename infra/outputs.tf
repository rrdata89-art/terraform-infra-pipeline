output "hello_world_lambda_name" {
  value = aws_lambda_function.hello_world.function_name
}

output "hello_world_lambda_arn" {
  value = aws_lambda_function.hello_world.arn
}
