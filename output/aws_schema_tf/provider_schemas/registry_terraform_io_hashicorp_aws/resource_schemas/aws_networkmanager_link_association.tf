resource "aws_networkmanager_link_association" "name" {
  device_id = string (Required)
  global_network_id = string (Required)
  link_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
