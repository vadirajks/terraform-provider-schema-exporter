resource "aws_ses_receipt_rule_set" "name" {
  rule_set_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
