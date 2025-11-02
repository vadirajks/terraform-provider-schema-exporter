resource "aws_appstream_stack" "name" {
  name = string (Required)
  arn = string (Computed)
  created_time = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  embed_host_domains = ['set', 'string'] (Optional, Computed)
  feedback_url = string (Optional, Computed)
  id = string (Optional, Computed)
  redirect_url = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  access_endpoints block "set" (Optional) {
    endpoint_type = string (Required)
    vpce_id = string (Optional, Computed)
  }

  application_settings block "list" (Optional) {
    enabled = bool (Required)
    settings_group = string (Optional)
  }

  storage_connectors block "set" (Optional) {
    connector_type = string (Required)
    domains = ['list', 'string'] (Optional, Computed)
    resource_identifier = string (Optional, Computed)
  }

  streaming_experience_settings block "list" (Optional) {
    preferred_protocol = string (Optional)
  }

  user_settings block "set" (Optional) {
    action = string (Required)
    permission = string (Required)
  }
}
