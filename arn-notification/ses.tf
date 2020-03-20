resource "aws_ses_template" "sns-template" {
  name = "sns-template"
  text = aws_iam_role.task1role.arn
}