resource "aws_cleanrooms_collaboration" "name" {
  creator_display_name = string (Required)
  creator_member_abilities = ['list', 'string'] (Required)
  description = string (Required)
  name = string (Required)
  query_log_status = string (Required)
  analytics_engine = string (Optional)
  arn = string (Computed)
  create_time = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  update_time = string (Computed)

  data_encryption_metadata block "list" (Optional) {
    allow_clear_text = bool (Required)
    allow_duplicates = bool (Required)
    allow_joins_on_columns_with_different_names = bool (Required)
    preserve_nulls = bool (Required)
  }

  member block "set" (Optional) {
    account_id = string (Required)
    display_name = string (Required)
    member_abilities = ['list', 'string'] (Required)
    status = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
