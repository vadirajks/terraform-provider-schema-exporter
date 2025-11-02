data "aws_networkmanager_connections" "name" {
  global_network_id = string (Required)
  device_id = string (Optional)
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)
}
