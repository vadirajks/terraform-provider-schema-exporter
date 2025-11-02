data "aws_elasticache_user" "name" {
  user_id = string (Required)
  access_string = string (Optional)
  engine = string (Optional)
  id = string (Optional, Computed)
  no_password_required = bool (Optional)
  passwords = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  user_name = string (Optional)

  authentication_mode block "list" (Optional) {
    password_count = number (Optional)
    type = string (Optional)
  }
}
