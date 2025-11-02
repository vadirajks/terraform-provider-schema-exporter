resource "aws_iam_user_login_profile" "name" {
  user = string (Required)
  encrypted_password = string (Computed)
  id = string (Optional, Computed)
  key_fingerprint = string (Computed)
  password = string (Computed)
  password_length = number (Optional)
  password_reset_required = bool (Optional, Computed)
  pgp_key = string (Optional)
}
