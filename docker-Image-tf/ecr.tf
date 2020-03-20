resource "aws_ecr_repository" "demo" {
  name                 = var.repo_name
  image_scanning_configuration {
    scan_on_push = true
  }
}
