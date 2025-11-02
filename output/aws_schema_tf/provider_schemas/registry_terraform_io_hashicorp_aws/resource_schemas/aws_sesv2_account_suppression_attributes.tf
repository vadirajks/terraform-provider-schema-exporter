resource "aws_sesv2_account_suppression_attributes" "name" {
  suppressed_reasons = ['set', 'string'] (Required)
  id = string (Computed)
  region = string (Optional, Computed)
}
