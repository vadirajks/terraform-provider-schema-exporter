resource "aws_kinesis_stream" "name" {
  name = string (Required)
  arn = string (Optional, Computed)
  encryption_type = string (Optional)
  enforce_consumer_deletion = bool (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional)
  region = string (Optional, Computed)
  retention_period = number (Optional)
  shard_count = number (Optional)
  shard_level_metrics = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  stream_mode_details block "list" (Optional) {
    stream_mode = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
