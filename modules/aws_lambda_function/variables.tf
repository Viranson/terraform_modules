variable "function_name" {
  type        = string
  description = "Lambda Function Name"
}

variable "image_uri" {
  type        = string
  description = "ECR image URI containing the function's deployment package"
  default     = ""
}

variable "memory_size" {
  type        = number
  description = "Amount of memory in MB the Lambda Function can use at runtime"
  default     = 128
}

variable "package_type" {
  type        = string
  description = "Lambda deployment package type"
}

variable "role_arn" {
  type        = string
  description = "Amazon Resource Name (ARN) of the function's execution role"
}

variable "tags" {
  type        = map(any)
  description = "Lambda Function resource Tags"
  default     = {}
}

variable "env_vars" {
  type        = map(any)
  description = "Map of environment variables that are accessible from the function code during execution"
  default     = {}
}