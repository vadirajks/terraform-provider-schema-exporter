resource "aws_elasticache_user" "name" {
  access_string = string (Required)
  engine = string (Required)
  user_id = string (Required)
  user_name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  no_password_required = bool (Optional)
  passwords = ['set', 'string'] (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  authentication_mode block "list" (Optional) {
    type = string (Required)
    password_count = number (Computed)
    passwords = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
