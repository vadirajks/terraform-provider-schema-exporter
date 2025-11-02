resource "aws_route53_cidr_location" "name" {
  cidr_blocks = ['set', 'string'] (Required)
  cidr_collection_id = string (Required)
  name = string (Required)
  id = string (Computed)
}
