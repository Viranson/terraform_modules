variable "function_name" {
  type        = string
  description = "Lambda Function Name"
}

variable "authorization_type" {
  type        = string
  description = "The type of authentication that the function URL uses"
  default     = "NONE"
}

variable "cors_allow_credentials" {
  type        = bool
  description = " Whether to allow cookies or other credentials in requests to the function URL"
  default     = null
}

variable "cors_allow_origins" {
  type        = list(string)
  description = "The origins that can access the function URL"
  default     = null
}

variable "cors_allow_methods" {
  type        = list(string)
  description = "The HTTP headers that origins can include in requests to the function URL"
  default     = null
}

variable "cors_allow_headers" {
  type        = list(string)
  description = "The HTTP headers in your function response that you want to expose to origins that call the function URL"
  default     = null
}

variable "cors_expose_headers" {
  type        = list(any)
  description = "The HTTP headers in your function response that you want to expose to origins that call the function URL"
  default     = null
}

variable "cors_max_age" {
  type        = number
  description = "The maximum amount of time, in seconds, that web browsers can cache results of a preflight request"
  default     = null
}