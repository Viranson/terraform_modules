variable "name" {
  type        = string
  description = "Role name"
}

variable "description" {
  type        = string
  description = "Role description"
}

variable "managed_policy_arns" {
  type        = list(any)
  description = "Set of exclusive IAM managed policy ARNs to attach to the IAM role."
  default     = []
}

variable "assume_role_policy" {
  type        = string
  description = "Policy that grants an entity permission to assume the role"
}

variable "tags" {
  type        = map(any)
  description = "IAM role Tags"
  default     = {}
}