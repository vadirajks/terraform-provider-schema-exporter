resource "aws_storagegateway_working_storage" "name" {
  disk_id = string (Required)
  gateway_arn = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
