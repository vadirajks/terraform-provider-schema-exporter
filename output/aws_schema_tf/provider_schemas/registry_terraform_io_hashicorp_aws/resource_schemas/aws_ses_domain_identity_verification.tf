resource "aws_ses_domain_identity_verification" "name" {
  domain = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
