data "aws_wafregional_rate_based_rule" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
