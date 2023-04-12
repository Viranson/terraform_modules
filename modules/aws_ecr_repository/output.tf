output "ecr_repository_id" {
  value = aws_ecr_repository.first_shuttle_ecr_repository.id
}

output "ecr_repository_name" {
  value = aws_ecr_repository.first_shuttle_ecr_repository.name
}