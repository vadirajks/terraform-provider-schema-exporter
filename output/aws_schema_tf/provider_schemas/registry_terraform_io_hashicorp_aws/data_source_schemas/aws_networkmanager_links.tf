data "aws_networkmanager_links" "name" {
  global_network_id = string (Required)
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  provider_name = string (Optional)
  site_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  type = string (Optional)
}
