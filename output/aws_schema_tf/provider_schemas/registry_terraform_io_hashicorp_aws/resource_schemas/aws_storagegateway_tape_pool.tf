resource "aws_storagegateway_tape_pool" "name" {
  pool_name = string (Required)
  storage_class = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  retention_lock_time_in_days = number (Optional)
  retention_lock_type = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
