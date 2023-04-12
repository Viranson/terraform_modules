output "eip_id" {
  value = aws_eip.first_shuttle_eip.id
}

output "public_ip" {
  value = aws_eip.first_shuttle_eip.public_ip
}