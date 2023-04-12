output "url" {
  value = aws_lambda_function_url.first_shuttle_lambda_function_url.function_url
}

output "id" {
  value = aws_lambda_function_url.first_shuttle_lambda_function_url.url_id
}