variable "name" {
  type        = string
  description = "Amazon ECR Repository name"
}

variable "image_tag_mutability" {
  type        = string
  description = "The tag mutability setting for the repository"
}

variable "scan_on_push" {
  type        = bool
  description = "Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)"
}