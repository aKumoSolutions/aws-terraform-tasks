resource "aws_launch_configuration" "demo" {
  name_prefix   = var.name_prefix
  image_id      = var.image_id
  instance_type = var.instance_type
  user_data     = file("userdata.sh")
  security_groups = [aws_security_group.asg.id]
  key_name       = var.key_name
  target_group_arns  = [aws_lb_target_group.demo.arn]
  
}

resource "aws_autoscaling_group" "demo" {
  desired_capacity   = 2
  max_size           = 10
  min_size           = 1
  health_check_type  = "ELB"
  launch_configuration = aws_launch_configuration.demo.id
  vpc_zone_identifier = [aws_subnet.private-a.id, aws_subnet.public-a.id]
}



