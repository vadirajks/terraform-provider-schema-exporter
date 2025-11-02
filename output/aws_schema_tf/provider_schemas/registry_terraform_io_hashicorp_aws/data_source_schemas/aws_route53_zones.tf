data "aws_route53_zones" "name" {
  id = string (Computed)
  ids = ['list', 'string'] (Computed)
}
