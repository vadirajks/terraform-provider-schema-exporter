resource "aws_db_proxy" "name" {
  engine_family = string (Required)
  name = string (Required)
  role_arn = string (Required)
  vpc_subnet_ids = ['set', 'string'] (Required)
  arn = string (Computed)
  debug_logging = bool (Optional)
  default_auth_scheme = string (Optional, Computed)
  endpoint = string (Computed)
  id = string (Optional, Computed)
  idle_client_timeout = number (Optional, Computed)
  region = string (Optional, Computed)
  require_tls = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  vpc_security_group_ids = ['set', 'string'] (Optional, Computed)

  auth block "set" (Optional) {
    auth_scheme = string (Optional)
    client_password_auth_type = string (Optional, Computed)
    description = string (Optional)
    iam_auth = string (Optional)
    secret_arn = string (Optional)
    username = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
