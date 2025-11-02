resource "aws_ses_domain_identity" "name" {
  domain = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  verification_token = string (Computed)
}
