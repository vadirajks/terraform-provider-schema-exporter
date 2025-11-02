resource "aws_rbin_rule" "name" {
  resource_type = string (Required)
  arn = string (Computed)
  description = string (Optional, Computed)
  id = string (Computed)
  lock_end_time = string (Computed)
  lock_state = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  exclude_resource_tags block "set" (Optional) {
    resource_tag_key = string (Required)
    resource_tag_value = string (Optional)
  }

  lock_configuration block "list" (Optional) {

    unlock_delay block "list" (Required) {
      unlock_delay_unit = string (Required)
      unlock_delay_value = number (Required)
    }
  }

  resource_tags block "set" (Optional) {
    resource_tag_key = string (Required)
    resource_tag_value = string (Optional)
  }

  retention_period block "list" (Required) {
    retention_period_unit = string (Required)
    retention_period_value = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
