resource "aws_iam_instance_profile" "demo-profile" {
    name = var.instance_profile_name
    role = var.role_name
}


