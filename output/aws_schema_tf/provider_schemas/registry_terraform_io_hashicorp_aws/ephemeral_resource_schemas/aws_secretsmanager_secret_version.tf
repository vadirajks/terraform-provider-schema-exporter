resource "aws_secretsmanager_secret_version" "name" { // Ephemeral Resource
  secret_id = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  region = string (Optional, Computed)
  secret_binary = string (Computed)
  secret_string = string (Computed)
  version_id = string (Optional, Computed)
  version_stage = string (Optional, Computed)
  version_stages = ['list', 'string'] (Computed)
}
