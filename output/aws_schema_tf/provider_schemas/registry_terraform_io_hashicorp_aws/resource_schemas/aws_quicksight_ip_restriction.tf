resource "aws_quicksight_ip_restriction" "name" {
  enabled = bool (Required)
  aws_account_id = string (Optional, Computed)
  ip_restriction_rule_map = ['map', 'string'] (Optional)
  region = string (Optional, Computed)
  vpc_endpoint_id_restriction_rule_map = ['map', 'string'] (Optional)
  vpc_id_restriction_rule_map = ['map', 'string'] (Optional)
}
