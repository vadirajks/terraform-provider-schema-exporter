resource "aws_ses_domain_dkim" "name" {
  domain = string (Required)
  dkim_tokens = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
