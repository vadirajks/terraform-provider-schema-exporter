resource "aws_finspace_kx_dataview" "name" {
  auto_update = bool (Required)
  az_mode = string (Required)
  database_name = string (Required)
  environment_id = string (Required)
  name = string (Required)
  arn = string (Computed)
  availability_zone_id = string (Optional)
  changeset_id = string (Optional)
  created_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_modified_timestamp = string (Computed)
  read_write = bool (Optional)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  segment_configurations block "list" (Optional) {
    db_paths = ['list', 'string'] (Required)
    volume_name = string (Required)
    on_demand = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
