data "aws_networkmanager_site" "name" {
  global_network_id = string (Required)
  site_id = string (Required)
  arn = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  location = ['list', ['object', {'address': 'string', 'latitude': 'string', 'longitude': 'string'}]] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
