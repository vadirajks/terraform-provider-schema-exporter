resource "aws_networkmanager_site" "name" {
  global_network_id = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  location block "list" (Optional) {
    address = string (Optional)
    latitude = string (Optional)
    longitude = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
