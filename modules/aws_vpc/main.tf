resource "aws_vpc" "first_travel_vpc" {
  cidr_block = var.vpc_ipv4_cidr_block
  tags       = var.vpc_tags
}