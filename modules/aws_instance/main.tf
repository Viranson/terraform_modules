resource "aws_instance" "first_shuttle_ec2_instance" {
  ami                  = var.ec2_ami
  instance_type        = var.instance_type
  user_data            = var.user_data
  iam_instance_profile = var.iam_instance_profile_name
  key_name             = var.key_name
  subnet_id            = var.subnet_id
  availability_zone    = var.availability_zone

  vpc_security_group_ids = var.security_group_ids

  root_block_device {
    volume_size = var.volume_size
  }

  lifecycle {
    ignore_changes = [
      # Ignore changes to user_data
      user_data,
      user_data_replace_on_change,
    ]
  }

  tags = var.ec2_instance_tags
}