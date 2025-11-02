resource "aws_secretsmanager_random_password" "name" { // Ephemeral Resource
  exclude_characters = string (Optional)
  exclude_lowercase = bool (Optional)
  exclude_numbers = bool (Optional)
  exclude_punctuation = bool (Optional)
  exclude_uppercase = bool (Optional)
  include_space = bool (Optional)
  password_length = number (Optional)
  random_password = string (Computed)
  region = string (Optional, Computed)
  require_each_included_type = bool (Optional)
}
