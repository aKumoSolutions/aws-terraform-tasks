resource "aws_iam_policy" "task1policy" {
  name        = "task1policy"
  path        = "/"
  description = "Task 1 policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}