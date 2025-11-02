resource "aws_sesv2_email_identity_mail_from_attributes" "name" {
  email_identity = string (Required)
  behavior_on_mx_failure = string (Optional)
  id = string (Optional, Computed)
  mail_from_domain = string (Optional)
  region = string (Optional, Computed)
}
