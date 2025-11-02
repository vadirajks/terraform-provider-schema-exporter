resource "aws_route53_cidr_collection" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Computed)
  version = number (Computed)
}
