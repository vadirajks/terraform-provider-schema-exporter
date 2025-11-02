resource "aws_route53_resolver_rule_association" "name" {
  resolver_rule_id = string (Required)
  vpc_id = string (Required)
  id = string (Optional, Computed)
  name = string (Optional)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
