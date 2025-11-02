resource "aws_medialive_multiplex" "name" {
  availability_zones = ['list', 'string'] (Required)
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  start_multiplex = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  multiplex_settings block "list" (Optional) {
    transport_stream_bitrate = number (Required)
    transport_stream_id = number (Required)
    maximum_video_buffer_delay_milliseconds = number (Optional, Computed)
    transport_stream_reserved_bitrate = number (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
