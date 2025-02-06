output "role_arn" {
  description = "The ARN of the created role"
  value       = aws_iam_role.role_for_child.arn
}


output "role_arn" {
  value = aws_iam_role.role_for_child.arn
}
