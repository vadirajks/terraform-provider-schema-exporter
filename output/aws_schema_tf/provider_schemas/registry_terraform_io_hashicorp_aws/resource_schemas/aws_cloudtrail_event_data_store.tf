resource "aws_cloudtrail_event_data_store" "name" {
  name = string (Required)
  arn = string (Computed)
  billing_mode = string (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional)
  multi_region_enabled = bool (Optional)
  organization_enabled = bool (Optional)
  region = string (Optional, Computed)
  retention_period = number (Optional)
  suspend = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  termination_protection_enabled = bool (Optional)

  advanced_event_selector block "list" (Optional) {
    name = string (Optional, Computed)

    field_selector block "set" (Optional) {
      ends_with = ['list', 'string'] (Optional, Computed)
      equals = ['list', 'string'] (Optional, Computed)
      field = string (Optional, Computed)
      not_ends_with = ['list', 'string'] (Optional, Computed)
      not_equals = ['list', 'string'] (Optional, Computed)
      not_starts_with = ['list', 'string'] (Optional, Computed)
      starts_with = ['list', 'string'] (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
