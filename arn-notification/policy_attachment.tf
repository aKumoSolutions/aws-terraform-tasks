resource "aws_iam_policy_attachment" "task1attachment" {
  name       = "task1attachment"
  roles      = [aws_iam_role.task1role.name]
  policy_arn = aws_iam_policy.task1policy.arn
}