resource "aws_lambda_function_url" "first_shuttle_lambda_function_url" {
  function_name      = var.function_name
  authorization_type = var.authorization_type

  cors {
    allow_credentials = var.cors_allow_credentials
    allow_origins     = var.cors_allow_origins
    allow_methods     = var.cors_allow_methods
    allow_headers     = var.cors_allow_headers
    expose_headers    = var.cors_expose_headers
    max_age           = var.cors_max_age
  }
}