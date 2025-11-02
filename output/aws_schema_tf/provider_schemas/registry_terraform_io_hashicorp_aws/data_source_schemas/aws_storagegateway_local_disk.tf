data "aws_storagegateway_local_disk" "name" {
  gateway_arn = string (Required)
  disk_id = string (Computed)
  disk_node = string (Optional, Computed)
  disk_path = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
