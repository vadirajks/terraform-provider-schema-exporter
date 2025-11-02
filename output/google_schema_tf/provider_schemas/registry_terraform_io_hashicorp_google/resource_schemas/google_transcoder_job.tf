resource "google_transcoder_job" "name" {
  location = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  end_time = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  start_time = string (Computed)
  state = string (Computed)
  template_id = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)

  config block "list" (Optional) {

    ad_breaks block "list" (Optional) {
      start_time_offset = string (Optional, Computed)
    }

    edit_list block "list" (Optional) {
      inputs = ['list', 'string'] (Optional, Computed)
      key = string (Optional, Computed)
      start_time_offset = string (Optional, Computed)
    }

    elementary_streams block "list" (Optional) {
      key = string (Optional, Computed)

      audio_stream block "list" (Optional) {
        bitrate_bps = number (Required)
        channel_count = number (Optional, Computed)
        channel_layout = ['list', 'string'] (Optional, Computed)
        codec = string (Optional, Computed)
        sample_rate_hertz = number (Optional, Computed)
      }

      video_stream block "list" (Optional) {

        h264 block "list" (Optional) {
          bitrate_bps = number (Required)
          frame_rate = number (Required)
          crf_level = number (Optional, Computed)
          entropy_coder = string (Optional, Computed)
          gop_duration = string (Optional, Computed)
          height_pixels = number (Optional, Computed)
          pixel_format = string (Optional, Computed)
          preset = string (Optional, Computed)
          profile = string (Optional, Computed)
          rate_control_mode = string (Optional, Computed)
          vbv_fullness_bits = number (Optional, Computed)
          vbv_size_bits = number (Optional, Computed)
          width_pixels = number (Optional, Computed)

          hlg block "list" (Optional) {
          }

          sdr block "list" (Optional) {
          }
        }
      }
    }

    encryptions block "list" (Optional) {
      id = string (Required)

      aes128 block "list" (Optional) {
      }

      drm_systems block "list" (Optional) {

        clearkey block "list" (Optional) {
        }

        fairplay block "list" (Optional) {
        }

        playready block "list" (Optional) {
        }

        widevine block "list" (Optional) {
        }
      }

      mpeg_cenc block "list" (Optional) {
        scheme = string (Required)
      }

      sample_aes block "list" (Optional) {
      }

      secret_manager_key_source block "list" (Optional) {
        secret_version = string (Required)
      }
    }

    inputs block "list" (Optional) {
      key = string (Optional, Computed)
      uri = string (Optional, Computed)
    }

    manifests block "list" (Optional) {
      file_name = string (Optional, Computed)
      mux_streams = ['list', 'string'] (Optional, Computed)
      type = string (Optional, Computed)
    }

    mux_streams block "list" (Optional) {
      container = string (Optional, Computed)
      elementary_streams = ['list', 'string'] (Optional, Computed)
      encryption_id = string (Optional, Computed)
      file_name = string (Optional, Computed)
      key = string (Optional, Computed)

      segment_settings block "list" (Optional) {
        segment_duration = string (Optional, Computed)
      }
    }

    output block "list" (Optional) {
      uri = string (Optional, Computed)
    }

    overlays block "list" (Optional) {

      animations block "list" (Optional) {

        animation_fade block "list" (Optional) {
          fade_type = string (Required)
          end_time_offset = string (Optional, Computed)
          start_time_offset = string (Optional, Computed)

          xy block "list" (Optional) {
            x = number (Optional, Computed)
            y = number (Optional, Computed)
          }
        }
      }

      image block "list" (Optional) {
        uri = string (Required)
      }
    }

    pubsub_destination block "list" (Optional) {
      topic = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
