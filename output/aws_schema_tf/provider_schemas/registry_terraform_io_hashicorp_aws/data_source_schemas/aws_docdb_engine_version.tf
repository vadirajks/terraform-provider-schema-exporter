data "aws_docdb_engine_version" "name" {
  engine = string (Optional)
  engine_description = string (Computed)
  exportable_log_types = ['set', 'string'] (Computed)
  id = string (Optional, Computed)
  parameter_group_family = string (Optional, Computed)
  preferred_versions = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
  supports_log_exports_to_cloudwatch = bool (Computed)
  valid_upgrade_targets = ['set', 'string'] (Computed)
  version = string (Optional, Computed)
  version_description = string (Computed)
}
