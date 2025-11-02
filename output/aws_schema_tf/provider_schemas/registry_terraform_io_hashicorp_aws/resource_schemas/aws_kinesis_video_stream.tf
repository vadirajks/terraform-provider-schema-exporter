resource "aws_kinesis_video_stream" "name" {
  name = string (Required)
  arn = string (Computed)
  creation_time = string (Computed)
  data_retention_in_hours = number (Optional)
  device_name = string (Optional)
  id = string (Optional, Computed)
  kms_key_id = string (Optional, Computed)
  media_type = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
