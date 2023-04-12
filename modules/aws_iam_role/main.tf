resource "aws_iam_role" "first_shuttle_iam_role" {
  name                = var.name
  description         = var.description
  assume_role_policy  = var.assume_role_policy
  managed_policy_arns = var.managed_policy_arns
  tags                = var.tags
}