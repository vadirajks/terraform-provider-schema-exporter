resource "aws_acmpca_permission" "name" {
  actions = ['set', 'string'] (Required)
  certificate_authority_arn = string (Required)
  principal = string (Required)
  id = string (Optional, Computed)
  policy = string (Computed)
  region = string (Optional, Computed)
  source_account = string (Optional, Computed)
}
