resource "aws_storagegateway_file_system_association" "name" {
  gateway_arn = string (Required)
  location_arn = string (Required)
  password = string (Required)
  username = string (Required)
  arn = string (Computed)
  audit_destination_arn = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  cache_attributes block "list" (Optional) {
    cache_stale_timeout_in_seconds = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
