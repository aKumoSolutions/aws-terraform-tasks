// Use the AWS Certificate Manager to create an SSL cert for our domain.
// This resource won't be created until it validates the DNS 
resource "aws_acm_certificate" "cert" {
// It called a wildcard cert, so we can host subdomains later.
  domain_name       = var.root_domain_name
  validation_method = "DNS"

}

data "aws_route53_zone" "zone" {
  name         = var.root_domain_name
  private_zone = false
}



resource "aws_acm_certificate_validation" "cert" {
// In here, we are validating our certification in Route53
  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = [aws_route53_record.cert_validation.fqdn]
}