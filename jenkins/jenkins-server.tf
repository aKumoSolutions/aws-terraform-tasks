resource "aws_instance" "demo-jenkins" {
    ami                         = var.ami
    instance_type               = var.instance_type
    subnet_id                   = var.subnet_id
    security_groups             = [aws_security_group.demo-sg.id]
    associate_public_ip_address = true
    user_data                   = file("userdata.sh") 
    key_name                    = var.key_name
    iam_instance_profile        = aws_iam_instance_profile.demo-profile.name
}