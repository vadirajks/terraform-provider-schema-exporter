data "aws_ses_active_receipt_rule_set" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  rule_set_name = string (Computed)
}
