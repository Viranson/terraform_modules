resource "aws_db_subnet_group" "first_shuttle_db_subnet_group" {
  name        = var.name
  description = var.description
  subnet_ids  = var.subnet_ids

  tags = var.tags
}