resource "aws_eip" "first_shuttle_eip" {
  tags = var.tags
  instance = var.instance_id
  vpc      = var.vpc
}
