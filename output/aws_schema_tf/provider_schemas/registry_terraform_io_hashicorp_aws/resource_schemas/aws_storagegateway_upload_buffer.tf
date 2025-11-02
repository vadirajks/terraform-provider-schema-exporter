resource "aws_storagegateway_upload_buffer" "name" {
  gateway_arn = string (Required)
  disk_id = string (Optional, Computed)
  disk_path = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
