resource "aws_networkmanager_device" "name" {
  global_network_id = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  model = string (Optional)
  serial_number = string (Optional)
  site_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Optional)
  vendor = string (Optional)

  aws_location block "list" (Optional) {
    subnet_arn = string (Optional)
    zone = string (Optional)
  }

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
