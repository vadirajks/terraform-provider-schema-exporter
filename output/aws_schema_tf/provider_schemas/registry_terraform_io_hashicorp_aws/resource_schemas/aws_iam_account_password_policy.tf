resource "aws_iam_account_password_policy" "name" {
  allow_users_to_change_password = bool (Optional)
  expire_passwords = bool (Computed)
  hard_expiry = bool (Optional, Computed)
  id = string (Optional, Computed)
  max_password_age = number (Optional, Computed)
  minimum_password_length = number (Optional)
  password_reuse_prevention = number (Optional, Computed)
  require_lowercase_characters = bool (Optional, Computed)
  require_numbers = bool (Optional, Computed)
  require_symbols = bool (Optional, Computed)
  require_uppercase_characters = bool (Optional, Computed)
}
