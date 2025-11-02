resource "aws_redshiftserverless_snapshot" "name" {
  namespace_name = string (Required)
  snapshot_name = string (Required)
  accounts_with_provisioned_restore_access = ['set', 'string'] (Computed)
  accounts_with_restore_access = ['set', 'string'] (Computed)
  admin_username = string (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Computed)
  namespace_arn = string (Computed)
  owner_account = string (Computed)
  region = string (Optional, Computed)
  retention_period = number (Optional)
}
