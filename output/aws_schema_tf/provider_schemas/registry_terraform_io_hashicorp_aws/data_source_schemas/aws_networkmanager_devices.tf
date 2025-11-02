data "aws_networkmanager_devices" "name" {
  global_network_id = string (Required)
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  site_id = string (Optional)
  tags = ['map', 'string'] (Optional)
}
