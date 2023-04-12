variable "name" {
  type        = string
  description = "The name of the DB subnet group"
}

variable "description" {
  type        = string
  description = "Description of the subnet group"
}

variable "subnet_ids" {
  type        = list(any)
  description = "List of VPC subnet IDs"
}

variable "tags" {
  type        = map(any)
  description = "Tags to assigne to the resource"
}