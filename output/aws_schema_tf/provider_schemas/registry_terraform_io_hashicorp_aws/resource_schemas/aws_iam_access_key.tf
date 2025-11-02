resource "aws_iam_access_key" "name" {
  user = string (Required)
  create_date = string (Computed)
  encrypted_secret = string (Computed)
  encrypted_ses_smtp_password_v4 = string (Computed)
  id = string (Optional, Computed)
  key_fingerprint = string (Computed)
  pgp_key = string (Optional)
  secret = string (Computed)
  ses_smtp_password_v4 = string (Computed)
  status = string (Optional)
}
