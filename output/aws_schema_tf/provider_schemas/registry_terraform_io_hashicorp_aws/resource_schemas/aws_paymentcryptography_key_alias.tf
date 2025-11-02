resource "aws_paymentcryptography_key_alias" "name" {
  alias_name = string (Required)
  id = string (Computed)
  key_arn = string (Optional)
  region = string (Optional, Computed)
}
