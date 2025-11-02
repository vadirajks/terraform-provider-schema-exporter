resource "aws_secretsmanager_secret_version" "name" {
  secret_id = string (Required)
  arn = string (Computed)
  has_secret_string_wo = bool (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  secret_binary = string (Optional)
  secret_string = string (Optional)
  secret_string_wo = string (Optional)
  secret_string_wo_version = number (Optional)
  version_id = string (Computed)
  version_stages = ['set', 'string'] (Optional, Computed)
}
