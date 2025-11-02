data "aws_waf_rule" "name" {
  name = string (Required)
  id = string (Optional, Computed)
}
