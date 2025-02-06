resource "aws_iam_role" "role_for_child" {
  provider = aws.master
  name     = var.ROLE_NAME
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${var.child_account_id}:root"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "policy_for_child" {
  provider = aws.master
  name     = var.POLICY_NAME
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = var.PERMISSIONS
        Effect   = "Allow"
        Resource = var.RESOURCES
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach_policy_to_role" {
  provider = aws.master
  role     = aws_iam_role.role_for_child.name
  policy_arn = aws_iam_policy.policy_for_child.arn
}
