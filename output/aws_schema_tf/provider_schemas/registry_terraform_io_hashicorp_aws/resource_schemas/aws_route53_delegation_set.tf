resource "aws_route53_delegation_set" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  name_servers = ['list', 'string'] (Computed)
  reference_name = string (Optional)
}
