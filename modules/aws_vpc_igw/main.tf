resource "aws_internet_gateway" "first_shuttle_vpc_igw" {
  vpc_id = var.vpc_id

  tags = var.aws_igw_tags
}