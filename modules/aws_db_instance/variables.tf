variable "db_instance_identifier" {
  type        = string
  description = "The name of the RDS instance"
}

variable "db_name" {
  type        = string
  description = "Name of the database to create when the DB instance is created"
}

variable "db_allocated_storage" {
  type        = number
  description = "Allocated storage in gibibytes"
}

variable "db_maintenance_window" {
  type        = string
  description = "The window to perform maintenance in."
}

variable "db_storage_type" {
  type        = string
  description = "Type of storage to use to provision db instance"
}

variable "db_engine" {
  type        = string
  description = "The database engine to use"
}

variable "db_engine_version" {
  type        = string
  description = "The engine version to use"
}

variable "db_instance_class" {
  type        = string
  description = "The instance type of the RDS instance"
}

variable "db_subnet_group_name" {
  type        = string
  description = "Name of DB subnet group"
}

variable "db_password" {
  type        = string
  description = "Password for the master DB user"
  sensitive   = true
}

variable "db_username" {
  type        = string
  description = "Username of the Master DB user"
}

variable "db_availability_zone" {
  type        = string
  description = "The availability zone of the instance."
}

variable "db_backup_window" {
  type        = string
  description = "The backup window"
}

variable "db_backup_retention_period" {
  type        = number
  description = "The days to retain backups for"
}

variable "db_iam_database_authentication_enabled" {
  type        = bool
  description = "Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled"
  default     = false
}

variable "db_multi_az" {
  type        = bool
  description = "Specifies if the RDS instance is multi-AZ"
}

variable "db_auto_minor_version_upgrade" {
  type        = bool
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
  default     = true
}

variable "db_delete_automated_backups" {
  type        = bool
  description = "Specifies whether to remove automated backups immediately after the DB instance is deleted"
  default     = true
}

variable "db_deletion_protection" {
  type        = bool
  description = "Specifies If the DB instance should have deletion protection enabled"
  default     = false
}

variable "db_publicly_accessible" {
  type        = bool
  description = "Bool to control if instance is publicly accessible"
  default     = false
}

variable "db_skip_final_snapshot" {
  type        = bool
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted"
}

variable "db_copy_tags_to_snapshot" {
  type        = bool
  description = "Copy all Instance tags to snapshots"
  default     = true
}

variable "db_apply_immediately" {
  type        = bool
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window"
  default     = true
}

variable "db_vpc_security_group_ids" {
  type        = list(any)
  description = "List of VPC security groups to associate"
}

variable "tags" {
  type        = map(any)
  description = "Tags to assign to the resource"
}