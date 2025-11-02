resource "aws_ses_domain_mail_from" "name" {
  domain = string (Required)
  mail_from_domain = string (Required)
  behavior_on_mx_failure = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
