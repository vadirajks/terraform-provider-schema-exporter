resource "aws_fms_resource_set" "name" {
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  resource_set block "list" (Optional) {
    name = string (Required)
    description = string (Optional)
    id = string (Computed)
    last_update_time = string (Computed)
    resource_set_status = string (Optional, Computed)
    resource_type_list = ['list', 'string'] (Optional)
    update_token = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
