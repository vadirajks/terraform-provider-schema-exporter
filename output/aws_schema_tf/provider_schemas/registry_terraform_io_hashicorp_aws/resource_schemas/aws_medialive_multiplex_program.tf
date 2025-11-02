resource "aws_medialive_multiplex_program" "name" {
  multiplex_id = string (Required)
  program_name = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)

  multiplex_program_settings block "list" (Optional) {
    preferred_channel_pipeline = string (Required)
    program_number = number (Required)

    service_descriptor block "list" (Optional) {
      provider_name = string (Required)
      service_name = string (Required)
    }

    video_settings block "list" (Optional) {
      constant_bitrate = number (Optional, Computed)

      statmux_settings block "list" (Optional) {
        maximum_bitrate = number (Optional, Computed)
        minimum_bitrate = number (Optional, Computed)
        priority = number (Optional, Computed)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
