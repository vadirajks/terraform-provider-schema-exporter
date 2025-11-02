resource "aws_cloudtrail" "name" {
  name = string (Required)
  s3_bucket_name = string (Required)
  arn = string (Computed)
  cloud_watch_logs_group_arn = string (Optional)
  cloud_watch_logs_role_arn = string (Optional)
  enable_log_file_validation = bool (Optional)
  enable_logging = bool (Optional)
  home_region = string (Computed)
  id = string (Optional, Computed)
  include_global_service_events = bool (Optional)
  is_multi_region_trail = bool (Optional)
  is_organization_trail = bool (Optional)
  kms_key_id = string (Optional)
  region = string (Optional, Computed)
  s3_key_prefix = string (Optional)
  sns_topic_arn = string (Computed)
  sns_topic_name = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  advanced_event_selector block "list" (Optional) {
    name = string (Optional)

    field_selector block "set" (Required) {
      field = string (Required)
      ends_with = ['list', 'string'] (Optional)
      equals = ['list', 'string'] (Optional)
      not_ends_with = ['list', 'string'] (Optional)
      not_equals = ['list', 'string'] (Optional)
      not_starts_with = ['list', 'string'] (Optional)
      starts_with = ['list', 'string'] (Optional)
    }
  }

  event_selector block "list" (Optional) {
    exclude_management_event_sources = ['set', 'string'] (Optional)
    include_management_events = bool (Optional)
    read_write_type = string (Optional)

    data_resource block "list" (Optional) {
      type = string (Required)
      values = ['list', 'string'] (Required)
    }
  }

  insight_selector block "set" (Optional) {
    insight_type = string (Required)
  }
}
