resource "aws_db_instance" "first_shuttle_db_instance" {
  identifier                          = var.db_instance_identifier
  auto_minor_version_upgrade          = var.db_auto_minor_version_upgrade
  availability_zone                   = var.db_availability_zone
  iam_database_authentication_enabled = var.db_iam_database_authentication_enabled
  db_name                             = var.db_name
  allocated_storage                   = var.db_allocated_storage
  storage_type                        = var.db_storage_type
  engine                              = var.db_engine
  engine_version                      = var.db_engine_version
  instance_class                      = var.db_instance_class
  db_subnet_group_name                = var.db_subnet_group_name
  password                            = var.db_password
  username                            = var.db_username
  backup_retention_period             = var.db_backup_retention_period
  backup_window                       = var.db_backup_window
  maintenance_window                  = var.db_maintenance_window
  delete_automated_backups            = var.db_delete_automated_backups
  deletion_protection                 = var.db_deletion_protection
  multi_az                            = var.db_multi_az
  publicly_accessible                 = var.db_publicly_accessible
  skip_final_snapshot                 = var.db_skip_final_snapshot
  copy_tags_to_snapshot               = var.db_copy_tags_to_snapshot
  apply_immediately                   = var.db_apply_immediately
  vpc_security_group_ids              = var.db_vpc_security_group_ids
  tags                                = var.tags
}