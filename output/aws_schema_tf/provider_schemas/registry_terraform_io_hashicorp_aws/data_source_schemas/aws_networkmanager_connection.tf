data "aws_networkmanager_connection" "name" {
  connection_id = string (Required)
  global_network_id = string (Required)
  arn = string (Computed)
  connected_device_id = string (Computed)
  connected_link_id = string (Computed)
  description = string (Computed)
  device_id = string (Computed)
  id = string (Optional, Computed)
  link_id = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
