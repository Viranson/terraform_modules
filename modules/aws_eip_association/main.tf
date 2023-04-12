resource "aws_eip_association" "first_shuttle_eip_assoc" {
  instance_id   = var.instance_id
}