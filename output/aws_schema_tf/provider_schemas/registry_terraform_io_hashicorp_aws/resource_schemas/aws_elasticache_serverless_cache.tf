resource "aws_elasticache_serverless_cache" "name" {
  engine = string (Required)
  name = string (Required)
  arn = string (Computed)
  create_time = string (Computed)
  daily_snapshot_time = string (Optional, Computed)
  description = string (Optional, Computed)
  endpoint = ['list', ['object', {'address': 'string', 'port': 'number'}]] (Computed)
  full_engine_version = string (Computed)
  id = string (Computed)
  kms_key_id = string (Optional)
  major_engine_version = string (Optional, Computed)
  reader_endpoint = ['list', ['object', {'address': 'string', 'port': 'number'}]] (Computed)
  region = string (Optional, Computed)
  security_group_ids = ['set', 'string'] (Optional, Computed)
  snapshot_arns_to_restore = ['list', 'string'] (Optional)
  snapshot_retention_limit = number (Optional, Computed)
  status = string (Computed)
  subnet_ids = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  user_group_id = string (Optional)

  cache_usage_limits block "list" (Optional) {

    data_storage block "list" (Optional) {
      unit = string (Required)
      maximum = number (Optional, Computed)
      minimum = number (Optional, Computed)
    }

    ecpu_per_second block "list" (Optional) {
      maximum = number (Optional, Computed)
      minimum = number (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
