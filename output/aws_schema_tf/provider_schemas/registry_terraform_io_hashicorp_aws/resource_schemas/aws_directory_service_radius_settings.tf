resource "aws_directory_service_radius_settings" "name" {
  authentication_protocol = string (Required)
  directory_id = string (Required)
  display_label = string (Required)
  radius_port = number (Required)
  radius_retries = number (Required)
  radius_servers = ['set', 'string'] (Required)
  radius_timeout = number (Required)
  shared_secret = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  use_same_username = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
