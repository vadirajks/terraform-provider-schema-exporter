resource "aws_datasync_location_azure_blob" "name" {
  agent_arns = ['set', 'string'] (Required)
  authentication_type = string (Required)
  container_url = string (Required)
  access_tier = string (Optional)
  arn = string (Computed)
  blob_type = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  subdirectory = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  uri = string (Computed)

  sas_configuration block "list" (Optional) {
    token = string (Required)
  }
}
