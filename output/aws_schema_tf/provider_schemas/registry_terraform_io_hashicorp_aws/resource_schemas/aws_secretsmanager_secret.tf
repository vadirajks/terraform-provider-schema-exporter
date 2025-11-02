resource "aws_secretsmanager_secret" "name" {
  arn = string (Computed)
  description = string (Optional)
  force_overwrite_replica_secret = bool (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  policy = string (Optional, Computed)
  recovery_window_in_days = number (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  replica block "set" (Optional) {
    region = string (Required)
    kms_key_id = string (Optional, Computed)
    last_accessed_date = string (Computed)
    status = string (Computed)
    status_message = string (Computed)
  }
}
