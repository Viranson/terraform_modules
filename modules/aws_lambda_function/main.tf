resource "aws_lambda_function" "first_shuttle_lambda_function" {
  function_name = var.function_name
  image_uri     = var.image_uri
  memory_size   = var.memory_size
  package_type  = var.package_type
  role          = var.role_arn
  tags          = var.tags
  environment {
    variables = var.env_vars
  }
}