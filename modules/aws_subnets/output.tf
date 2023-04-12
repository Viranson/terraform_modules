output "aws_subnet_id" {
  value = aws_subnet.first_travel_vpc_subnet.id
}

output "aws_subnet_cidr_block" {
  value = aws_subnet.first_travel_vpc_subnet.cidr_block
}