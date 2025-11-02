data "aws_wafregional_rule" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
