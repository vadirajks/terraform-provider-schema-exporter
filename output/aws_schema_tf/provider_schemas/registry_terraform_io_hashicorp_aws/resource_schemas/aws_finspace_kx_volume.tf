resource "aws_finspace_kx_volume" "name" {
  availability_zones = ['list', 'string'] (Required)
  az_mode = string (Required)
  environment_id = string (Required)
  name = string (Required)
  type = string (Required)
  arn = string (Computed)
  attached_clusters = ['list', ['object', {'cluster_name': 'string', 'cluster_status': 'string', 'cluster_type': 'string'}]] (Computed)
  created_timestamp = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_modified_timestamp = string (Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  status_reason = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  nas1_configuration block "list" (Optional) {
    size = number (Required)
    type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
