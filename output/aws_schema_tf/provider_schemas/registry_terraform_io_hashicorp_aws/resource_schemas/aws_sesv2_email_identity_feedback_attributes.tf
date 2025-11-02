resource "aws_sesv2_email_identity_feedback_attributes" "name" {
  email_identity = string (Required)
  email_forwarding_enabled = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
