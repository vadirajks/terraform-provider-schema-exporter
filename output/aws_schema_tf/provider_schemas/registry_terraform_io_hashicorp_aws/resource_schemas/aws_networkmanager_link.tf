resource "aws_networkmanager_link" "name" {
  global_network_id = string (Required)
  site_id = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  provider_name = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  type = string (Optional)

  bandwidth block "list" (Required) {
    download_speed = number (Optional)
    upload_speed = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
