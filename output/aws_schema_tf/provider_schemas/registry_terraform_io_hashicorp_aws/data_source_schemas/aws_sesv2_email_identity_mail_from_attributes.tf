data "aws_sesv2_email_identity_mail_from_attributes" "name" {
  email_identity = string (Required)
  behavior_on_mx_failure = string (Computed)
  id = string (Optional, Computed)
  mail_from_domain = string (Computed)
  region = string (Optional, Computed)
}
