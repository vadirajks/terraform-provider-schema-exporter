resource "aws_networkmanager_connection" "name" {
  connected_device_id = string (Required)
  device_id = string (Required)
  global_network_id = string (Required)
  arn = string (Computed)
  connected_link_id = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  link_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
