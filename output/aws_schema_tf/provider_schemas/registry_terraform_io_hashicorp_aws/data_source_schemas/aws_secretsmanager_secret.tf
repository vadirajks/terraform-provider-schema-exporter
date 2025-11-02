data "aws_secretsmanager_secret" "name" {
  arn = string (Optional, Computed)
  created_date = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Computed)
  last_changed_date = string (Computed)
  name = string (Optional, Computed)
  policy = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
