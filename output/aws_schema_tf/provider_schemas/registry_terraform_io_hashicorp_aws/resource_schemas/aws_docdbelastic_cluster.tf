resource "aws_docdbelastic_cluster" "name" {
  admin_user_name = string (Required)
  admin_user_password = string (Required)
  auth_type = string (Required)
  name = string (Required)
  shard_capacity = number (Required)
  shard_count = number (Required)
  arn = string (Computed)
  backup_retention_period = number (Optional, Computed)
  endpoint = string (Computed)
  id = string (Computed)
  kms_key_id = string (Optional, Computed)
  preferred_backup_window = string (Optional, Computed)
  preferred_maintenance_window = string (Optional, Computed)
  region = string (Optional, Computed)
  subnet_ids = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  vpc_security_group_ids = ['set', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
