resource "aws_sesv2_email_identity_policy" "name" {
  email_identity = string (Required)
  policy = string (Required)
  policy_name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
