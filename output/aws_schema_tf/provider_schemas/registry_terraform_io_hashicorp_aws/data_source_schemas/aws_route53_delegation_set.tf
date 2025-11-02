data "aws_route53_delegation_set" "name" {
  id = string (Required)
  arn = string (Computed)
  caller_reference = string (Computed)
  name_servers = ['list', 'string'] (Computed)
}
