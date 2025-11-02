resource "aws_elastictranscoder_preset" "name" {
  container = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  type = string (Optional, Computed)
  video_codec_options = ['map', 'string'] (Optional)

  audio block "list" (Optional) {
    audio_packing_mode = string (Optional)
    bit_rate = string (Optional, Computed)
    channels = string (Optional)
    codec = string (Optional)
    sample_rate = string (Optional)
  }

  audio_codec_options block "list" (Optional) {
    bit_depth = string (Optional, Computed)
    bit_order = string (Optional, Computed)
    profile = string (Optional, Computed)
    signed = string (Optional, Computed)
  }

  thumbnails block "list" (Optional) {
    aspect_ratio = string (Optional)
    format = string (Optional)
    interval = string (Optional)
    max_height = string (Optional)
    max_width = string (Optional)
    padding_policy = string (Optional)
    resolution = string (Optional)
    sizing_policy = string (Optional)
  }

  video block "list" (Optional) {
    aspect_ratio = string (Optional)
    bit_rate = string (Optional, Computed)
    codec = string (Optional)
    display_aspect_ratio = string (Optional)
    fixed_gop = string (Optional)
    frame_rate = string (Optional)
    keyframes_max_dist = string (Optional)
    max_frame_rate = string (Optional, Computed)
    max_height = string (Optional)
    max_width = string (Optional)
    padding_policy = string (Optional)
    resolution = string (Optional)
    sizing_policy = string (Optional)
  }

  video_watermarks block "set" (Optional) {
    horizontal_align = string (Optional)
    horizontal_offset = string (Optional)
    id = string (Optional)
    max_height = string (Optional)
    max_width = string (Optional)
    opacity = string (Optional)
    sizing_policy = string (Optional)
    target = string (Optional)
    vertical_align = string (Optional)
    vertical_offset = string (Optional)
  }
}
