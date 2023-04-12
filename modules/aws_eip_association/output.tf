# output "association_id" {
#   value = aws_eip_association.first_shuttle_eip_assoc.association_id
# }

output "public_ip" {
  value = aws_eip_association.first_shuttle_eip_assoc.public_ip
}