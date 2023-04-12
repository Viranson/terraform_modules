output "instance_id" {
  value = aws_db_instance.first_shuttle_db_instance.id
  sensitive   = true
}

output "db_host" {
  description = "Retreive Daatabase instance Address"
  value       = aws_db_instance.first_shuttle_db_instance.address
}