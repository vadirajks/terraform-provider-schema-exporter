resource "aws_datasync_location_nfs" "name" {
  server_hostname = string (Required)
  subdirectory = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  uri = string (Computed)

  mount_options block "list" (Optional) {
    version = string (Optional)
  }

  on_prem_config block "list" (Required) {
    agent_arns = ['set', 'string'] (Required)
  }
}
