data "aws_ses_email_identity" "name" {
  email = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
