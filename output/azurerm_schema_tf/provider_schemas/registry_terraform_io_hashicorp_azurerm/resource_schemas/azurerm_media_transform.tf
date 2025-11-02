resource "azurerm_media_transform" "name" {
  media_services_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  output block "list"  (Optional){
    on_error_action = string (Optional)
    relative_priority = string (Optional)

    audio_analyzer_preset block "list"  (Optional){
      audio_analysis_mode = string (Optional)
      audio_language = string (Optional)
      experimental_options = ['map', 'string'] (Optional)
    }

    builtin_preset block "list"  (Optional){
      preset_name = string (Required)

      preset_configuration block "list"  (Optional){
        complexity = string (Optional)
        interleave_output = string (Optional)
        key_frame_interval_in_seconds = number (Optional)
        max_bitrate_bps = number (Optional)
        max_height = number (Optional)
        max_layers = number (Optional)
        min_bitrate_bps = number (Optional)
        min_height = number (Optional)
      }
    }

    custom_preset block "list"  (Optional){
      experimental_options = ['map', 'string'] (Optional)

      codec block "list"  (Required){

        aac_audio block "list"  (Optional){
          bitrate = number (Optional)
          channels = number (Optional)
          label = string (Optional)
          profile = string (Optional)
          sampling_rate = number (Optional)
        }

        copy_audio block "list"  (Optional){
          label = string (Optional)
        }

        copy_video block "list"  (Optional){
          label = string (Optional)
        }

        dd_audio block "list"  (Optional){
          bitrate = number (Optional)
          channels = number (Optional)
          label = string (Optional)
          sampling_rate = number (Optional)
        }

        h264_video block "list"  (Optional){
          complexity = string (Optional)
          key_frame_interval = string (Optional)
          label = string (Optional)
          rate_control_mode = string (Optional)
          scene_change_detection_enabled = bool (Optional)
          stretch_mode = string (Optional)
          sync_mode = string (Optional)

          layer block "list"  (Optional){
            bitrate = number (Required)
            adaptive_b_frame_enabled = bool (Optional)
            b_frames = number (Optional, Computed)
            buffer_window = string (Optional)
            crf = number (Optional)
            entropy_mode = string (Optional, Computed)
            frame_rate = string (Optional)
            height = string (Optional, Computed)
            label = string (Optional)
            level = string (Optional)
            max_bitrate = number (Optional, Computed)
            profile = string (Optional)
            reference_frames = number (Optional, Computed)
            slices = number (Optional, Computed)
            width = string (Optional, Computed)
          }
        }

        h265_video block "list"  (Optional){
          complexity = string (Optional)
          key_frame_interval = string (Optional)
          label = string (Optional)
          scene_change_detection_enabled = bool (Optional)
          stretch_mode = string (Optional)
          sync_mode = string (Optional)

          layer block "list"  (Optional){
            bitrate = number (Required)
            adaptive_b_frame_enabled = bool (Optional)
            b_frames = number (Optional, Computed)
            buffer_window = string (Optional)
            crf = number (Optional)
            frame_rate = string (Optional)
            height = string (Optional, Computed)
            label = string (Optional)
            level = string (Optional)
            max_bitrate = number (Optional, Computed)
            profile = string (Optional)
            reference_frames = number (Optional, Computed)
            slices = number (Optional, Computed)
            width = string (Optional, Computed)
          }
        }

        jpg_image block "list"  (Optional){
          start = string (Required)
          key_frame_interval = string (Optional)
          label = string (Optional)
          range = string (Optional)
          sprite_column = number (Optional)
          step = string (Optional)
          stretch_mode = string (Optional)
          sync_mode = string (Optional)

          layer block "list"  (Optional){
            height = string (Optional)
            label = string (Optional)
            quality = number (Optional)
            width = string (Optional)
          }
        }

        png_image block "list"  (Optional){
          start = string (Required)
          key_frame_interval = string (Optional)
          label = string (Optional)
          range = string (Optional)
          step = string (Optional)
          stretch_mode = string (Optional)
          sync_mode = string (Optional)

          layer block "list"  (Optional){
            height = string (Optional)
            label = string (Optional)
            width = string (Optional)
          }
        }
      }

      filter block "list"  (Optional){
        rotation = string (Optional)

        crop_rectangle block "list"  (Optional){
          height = string (Optional)
          left = string (Optional)
          top = string (Optional)
          width = string (Optional)
        }

        deinterlace block "list"  (Optional){
          mode = string (Optional)
          parity = string (Optional)
        }

        fade_in block "list"  (Optional){
          duration = string (Required)
          fade_color = string (Required)
          start = string (Optional)
        }

        fade_out block "list"  (Optional){
          duration = string (Required)
          fade_color = string (Required)
          start = string (Optional)
        }

        overlay block "list"  (Optional){

          audio block "list"  (Optional){
            input_label = string (Required)
            audio_gain_level = number (Optional)
            end = string (Optional)
            fade_in_duration = string (Optional)
            fade_out_duration = string (Optional)
            start = string (Optional)
          }

          video block "list"  (Optional){
            input_label = string (Required)
            audio_gain_level = number (Optional)
            end = string (Optional)
            fade_in_duration = string (Optional)
            fade_out_duration = string (Optional)
            opacity = number (Optional)
            start = string (Optional)

            crop_rectangle block "list"  (Optional){
              height = string (Optional)
              left = string (Optional)
              top = string (Optional)
              width = string (Optional)
            }

            position block "list"  (Optional){
              height = string (Optional)
              left = string (Optional)
              top = string (Optional)
              width = string (Optional)
            }
          }
        }
      }

      format block "list"  (Required){

        jpg block "list"  (Optional){
          filename_pattern = string (Required)
        }

        mp4 block "list"  (Optional){
          filename_pattern = string (Required)

          output_file block "list"  (Optional){
            labels = ['list', 'string'] (Required)
          }
        }

        png block "list"  (Optional){
          filename_pattern = string (Required)
        }

        transport_stream block "list"  (Optional){
          filename_pattern = string (Required)

          output_file block "list"  (Optional){
            labels = ['list', 'string'] (Required)
          }
        }
      }
    }

    face_detector_preset block "list"  (Optional){
      analysis_resolution = string (Optional)
      blur_type = string (Optional)
      experimental_options = ['map', 'string'] (Optional)
      face_redactor_mode = string (Optional)
    }

    video_analyzer_preset block "list"  (Optional){
      audio_analysis_mode = string (Optional)
      audio_language = string (Optional)
      experimental_options = ['map', 'string'] (Optional)
      insights_type = string (Optional)
    }
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
