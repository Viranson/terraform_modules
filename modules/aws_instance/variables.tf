variable "ec2_ami" {
  type        = string
  description = "AMI to use for the instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type to use for the instance"
}

variable "user_data" {
  type        = string
  description = "User data to provide when launching the instance"
  default     = ""
}

variable "iam_instance_profile_name" {
  type        = string
  description = "IAM Instance Profile to launch the instance with"
  default     = null
}

variable "key_name" {
  type        = string
  description = "Key name of the Key Pair to use for the instance"
}

variable "availability_zone" {
  type        = string
  description = "AZ to start the instance in"
}

variable "subnet_id" {
  type        = string
  description = "VPC Subnet ID to launch in"
}

variable "volume_size" {
  type        = number
  description = "VPC Subnet ID to launch in"
}

variable "security_group_ids" {
  type        = list(any)
  description = "List of security group names to associate with"
}

variable "ec2_instance_tags" {
  type        = map(any)
  description = "Tags to assign to EC2 Instance Ressource"
}