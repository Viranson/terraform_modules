output "role_arn" {
  value = aws_iam_role.first_shuttle_iam_role.arn
  sensitive   = true
}

output "role_name" {
  value = aws_iam_role.first_shuttle_iam_role.name
  sensitive   = true
}