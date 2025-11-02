resource "aws_datasync_location_smb" "name" {
  agent_arns = ['set', 'string'] (Required)
  password = string (Required)
  server_hostname = string (Required)
  subdirectory = string (Required)
  user = string (Required)
  arn = string (Computed)
  domain = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  uri = string (Computed)

  mount_options block "list" (Optional) {
    version = string (Optional)
  }
}
