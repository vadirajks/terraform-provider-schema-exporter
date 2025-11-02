data "aws_networkmanager_link" "name" {
  global_network_id = string (Required)
  link_id = string (Required)
  arn = string (Computed)
  bandwidth = ['list', ['object', {'download_speed': 'number', 'upload_speed': 'number'}]] (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  provider_name = string (Computed)
  site_id = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
  type = string (Computed)
}
