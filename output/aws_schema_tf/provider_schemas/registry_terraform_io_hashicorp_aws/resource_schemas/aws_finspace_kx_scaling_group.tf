resource "aws_finspace_kx_scaling_group" "name" {
  availability_zone_id = string (Required)
  environment_id = string (Required)
  host_type = string (Required)
  name = string (Required)
  arn = string (Computed)
  clusters = ['list', 'string'] (Computed)
  created_timestamp = string (Computed)
  id = string (Optional, Computed)
  last_modified_timestamp = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  status_reason = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
