resource "aws_ivs_recording_configuration" "name" {
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  recording_reconnect_window_seconds = number (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  destination_configuration block "list" (Required) {

    s3 block "list" (Required) {
      bucket_name = string (Required)
    }
  }

  thumbnail_configuration block "list" (Optional) {
    recording_mode = string (Optional, Computed)
    target_interval_seconds = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
