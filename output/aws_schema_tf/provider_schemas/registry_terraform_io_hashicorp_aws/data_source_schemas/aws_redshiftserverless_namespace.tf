data "aws_redshiftserverless_namespace" "name" {
  namespace_name = string (Required)
  admin_username = string (Computed)
  arn = string (Computed)
  db_name = string (Computed)
  default_iam_role_arn = string (Computed)
  iam_roles = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  kms_key_id = string (Computed)
  log_exports = ['set', 'string'] (Computed)
  namespace_id = string (Computed)
  region = string (Optional, Computed)
}
