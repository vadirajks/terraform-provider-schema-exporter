resource "aws_medialive_channel" "name" {
  channel_class = string (Required)
  name = string (Required)
  arn = string (Computed)
  channel_id = string (Computed)
  id = string (Optional, Computed)
  log_level = string (Optional, Computed)
  region = string (Optional, Computed)
  role_arn = string (Optional)
  start_channel = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  cdi_input_specification block "list" (Optional) {
    resolution = string (Required)
  }

  destinations block "set" (Required) {
    id = string (Required)

    media_package_settings block "set" (Optional) {
      channel_id = string (Required)
    }

    multiplex_settings block "list" (Optional) {
      multiplex_id = string (Required)
      program_name = string (Required)
    }

    settings block "set" (Optional) {
      password_param = string (Optional)
      stream_name = string (Optional)
      url = string (Optional)
      username = string (Optional)
    }
  }

  encoder_settings block "list" (Required) {

    audio_descriptions block "set" (Optional) {
      audio_selector_name = string (Required)
      name = string (Required)
      audio_type = string (Optional, Computed)
      audio_type_control = string (Optional, Computed)
      language_code = string (Optional, Computed)
      language_code_control = string (Optional, Computed)
      stream_name = string (Optional, Computed)

      audio_normalization_settings block "list" (Optional) {
        algorithm = string (Optional, Computed)
        algorithm_control = string (Optional, Computed)
        target_lkfs = number (Optional, Computed)
      }

      audio_watermark_settings block "list" (Optional) {

        nielsen_watermarks_settings block "list" (Optional) {
          nielsen_distribution_type = string (Optional, Computed)

          nielsen_cbet_settings block "list" (Optional) {
            cbet_check_digit_string = string (Required)
            cbet_stepaside = string (Required)
            csid = string (Required)
          }

          nielsen_naes_ii_nw_settings block "list" (Optional) {
            check_digit_string = string (Required)
            sid = number (Required)
          }
        }
      }

      codec_settings block "list" (Optional) {

        aac_settings block "list" (Optional) {
          bitrate = number (Optional, Computed)
          coding_mode = string (Optional, Computed)
          input_type = string (Optional, Computed)
          profile = string (Optional, Computed)
          rate_control_mode = string (Optional, Computed)
          raw_format = string (Optional, Computed)
          sample_rate = number (Optional, Computed)
          spec = string (Optional, Computed)
          vbr_quality = string (Optional, Computed)
        }

        ac3_settings block "list" (Optional) {
          bitrate = number (Optional, Computed)
          bitstream_mode = string (Optional, Computed)
          coding_mode = string (Optional, Computed)
          dialnorm = number (Optional, Computed)
          drc_profile = string (Optional, Computed)
          lfe_filter = string (Optional, Computed)
          metadata_control = string (Optional, Computed)
        }

        eac3_atmos_settings block "list" (Optional) {
          bitrate = number (Optional, Computed)
          coding_mode = string (Optional, Computed)
          dialnorm = number (Optional, Computed)
          drc_line = string (Optional, Computed)
          drc_rf = string (Optional, Computed)
          height_trim = number (Optional, Computed)
          surround_trim = number (Optional, Computed)
        }

        eac3_settings block "list" (Optional) {
          attenuation_control = string (Optional, Computed)
          bitrate = number (Optional, Computed)
          bitstream_mode = string (Optional, Computed)
          coding_mode = string (Optional, Computed)
          dc_filter = string (Optional, Computed)
          dialnorm = number (Optional, Computed)
          drc_line = string (Optional, Computed)
          drc_rf = string (Optional, Computed)
          lfe_control = string (Optional, Computed)
          lfe_filter = string (Optional, Computed)
          lo_ro_center_mix_level = number (Optional, Computed)
          lo_ro_surround_mix_level = number (Optional, Computed)
          lt_rt_center_mix_level = number (Optional, Computed)
          lt_rt_surround_mix_level = number (Optional, Computed)
          metadata_control = string (Optional, Computed)
          passthrough_control = string (Optional, Computed)
          phase_control = string (Optional, Computed)
          stereo_downmix = string (Optional, Computed)
          surround_ex_mode = string (Optional, Computed)
          surround_mode = string (Optional, Computed)
        }

        mp2_settings block "list" (Optional) {
          bitrate = number (Optional, Computed)
          coding_mode = string (Optional, Computed)
          sample_rate = number (Optional, Computed)
        }

        pass_through_settings block "list" (Optional) {
        }

        wav_settings block "list" (Optional) {
          bit_depth = number (Optional, Computed)
          coding_mode = string (Optional, Computed)
          sample_rate = number (Optional, Computed)
        }
      }

      remix_settings block "list" (Optional) {
        channels_in = number (Optional, Computed)
        channels_out = number (Optional, Computed)

        channel_mappings block "set" (Required) {
          output_channel = number (Required)

          input_channel_levels block "set" (Required) {
            gain = number (Required)
            input_channel = number (Required)
          }
        }
      }
    }

    avail_blanking block "list" (Optional) {
      state = string (Optional, Computed)

      avail_blanking_image block "list" (Optional) {
        uri = string (Required)
        password_param = string (Optional, Computed)
        username = string (Optional, Computed)
      }
    }

    caption_descriptions block "list" (Optional) {
      caption_selector_name = string (Required)
      name = string (Required)
      accessibility = string (Optional)
      language_code = string (Optional)
      language_description = string (Optional)

      destination_settings block "list" (Optional) {

        arib_destination_settings block "list" (Optional) {
        }

        burn_in_destination_settings block "list" (Optional) {
          outline_color = string (Required)
          teletext_grid_control = string (Required)
          alignment = string (Optional)
          background_color = string (Optional)
          background_opacity = number (Optional)
          font_color = string (Optional)
          font_opacity = number (Optional)
          font_resolution = number (Optional)
          font_size = string (Optional)
          outline_size = number (Optional)
          shadow_color = string (Optional)
          shadow_opacity = number (Optional)
          shadow_x_offset = number (Optional)
          shadow_y_offset = number (Optional)
          x_position = number (Optional)
          y_position = number (Optional)

          font block "list" (Optional) {
            uri = string (Required)
            password_param = string (Optional, Computed)
            username = string (Optional, Computed)
          }
        }

        dvb_sub_destination_settings block "list" (Optional) {
          alignment = string (Optional)
          background_color = string (Optional)
          background_opacity = number (Optional)
          font_color = string (Optional)
          font_opacity = number (Optional)
          font_resolution = number (Optional)
          font_size = string (Optional, Computed)
          outline_color = string (Optional)
          outline_size = number (Optional)
          shadow_color = string (Optional)
          shadow_opacity = number (Optional)
          shadow_x_offset = number (Optional)
          shadow_y_offset = number (Optional)
          teletext_grid_control = string (Optional)
          x_position = number (Optional)
          y_position = number (Optional)

          font block "list" (Optional) {
            uri = string (Required)
            password_param = string (Optional, Computed)
            username = string (Optional, Computed)
          }
        }

        ebu_tt_d_destination_settings block "list" (Optional) {
          copyright_holder = string (Optional)
          fill_line_gap = string (Optional)
          font_family = string (Optional)
          style_control = string (Optional, Computed)
        }

        embedded_destination_settings block "list" (Optional) {
        }

        embedded_plus_scte20_destination_settings block "list" (Optional) {
        }

        rtmp_caption_info_destination_settings block "list" (Optional) {
        }

        scte20_plus_embedded_destination_settings block "list" (Optional) {
        }

        scte27_destination_settings block "list" (Optional) {
        }

        smpte_tt_destination_settings block "list" (Optional) {
        }

        teletext_destination_settings block "list" (Optional) {
        }

        ttml_destination_settings block "list" (Optional) {
          style_control = string (Required)
        }

        webvtt_destination_settings block "list" (Optional) {
          style_control = string (Required)
        }
      }
    }

    global_configuration block "list" (Optional) {
      initial_audio_gain = number (Optional)
      input_end_action = string (Optional)
      output_locking_mode = string (Optional)
      output_timing_source = string (Optional)
      support_low_framerate_inputs = string (Optional)

      input_loss_behavior block "list" (Optional) {
        black_frame_msec = number (Optional)
        input_loss_image_color = string (Optional)
        input_loss_image_type = string (Optional)
        repeat_frame_msec = number (Optional)

        input_loss_image_slate block "list" (Optional) {
          uri = string (Required)
          password_param = string (Optional, Computed)
          username = string (Optional, Computed)
        }
      }
    }

    motion_graphics_configuration block "list" (Optional) {
      motion_graphics_insertion = string (Optional)

      motion_graphics_settings block "list" (Required) {

        html_motion_graphics_settings block "list" (Optional) {
        }
      }
    }

    nielsen_configuration block "list" (Optional) {
      distributor_id = string (Optional)
      nielsen_pcm_to_id3_tagging = string (Optional)
    }

    output_groups block "list" (Required) {
      name = string (Optional)

      output_group_settings block "list" (Required) {

        archive_group_settings block "list" (Optional) {
          rollover_interval = number (Optional)

          archive_cdn_settings block "list" (Optional) {

            archive_s3_settings block "list" (Optional) {
              canned_acl = string (Optional)
            }
          }

          destination block "list" (Required) {
            destination_ref_id = string (Required)
          }
        }

        frame_capture_group_settings block "list" (Optional) {

          destination block "list" (Required) {
            destination_ref_id = string (Required)
          }

          frame_capture_cdn_settings block "list" (Optional) {

            frame_capture_s3_settings block "list" (Optional) {
              canned_acl = string (Optional)
            }
          }
        }

        hls_group_settings block "list" (Optional) {
          ad_markers = ['list', 'string'] (Optional, Computed)
          base_url_content = string (Optional, Computed)
          base_url_content1 = string (Optional, Computed)
          base_url_manifest = string (Optional, Computed)
          base_url_manifest1 = string (Optional, Computed)
          caption_language_setting = string (Optional, Computed)
          client_cache = string (Optional, Computed)
          codec_specification = string (Optional, Computed)
          constant_iv = string (Optional, Computed)
          directory_structure = string (Optional, Computed)
          discontinuity_tags = string (Optional, Computed)
          encryption_type = string (Optional, Computed)
          hls_id3_segment_tagging = string (Optional, Computed)
          iframe_only_playlists = string (Optional, Computed)
          incomplete_segment_behavior = string (Optional, Computed)
          index_n_segments = number (Optional, Computed)
          input_loss_action = string (Optional, Computed)
          iv_in_manifest = string (Optional, Computed)
          iv_source = string (Optional, Computed)
          keep_segments = number (Optional, Computed)
          key_format = string (Optional, Computed)
          key_format_versions = string (Optional, Computed)
          manifest_compression = string (Optional, Computed)
          manifest_duration_format = string (Optional, Computed)
          min_segment_length = number (Optional, Computed)
          mode = string (Optional, Computed)
          output_selection = string (Optional, Computed)
          program_date_time = string (Optional, Computed)
          program_date_time_clock = string (Optional, Computed)
          program_date_time_period = number (Optional, Computed)
          redundant_manifest = string (Optional, Computed)
          segment_length = number (Optional, Computed)
          segments_per_subdirectory = number (Optional, Computed)
          stream_inf_resolution = string (Optional, Computed)
          timed_metadata_id3_frame = string (Optional, Computed)
          timed_metadata_id3_period = number (Optional, Computed)
          timestamp_delta_milliseconds = number (Optional, Computed)
          ts_file_mode = string (Optional, Computed)

          caption_language_mappings block "set" (Optional) {
            caption_channel = number (Required)
            language_code = string (Required)
            language_description = string (Required)
          }

          destination block "list" (Required) {
            destination_ref_id = string (Required)
          }

          hls_cdn_settings block "list" (Optional) {

            hls_akamai_settings block "list" (Optional) {
              connection_retry_interval = number (Optional)
              filecache_duration = number (Optional)
              http_transfer_mode = string (Optional, Computed)
              num_retries = number (Optional)
              restart_delay = number (Optional)
              salt = string (Optional, Computed)
              token = string (Optional, Computed)
            }

            hls_basic_put_settings block "list" (Optional) {
              connection_retry_interval = number (Optional)
              filecache_duration = number (Optional)
              num_retries = number (Optional)
              restart_delay = number (Optional)
            }

            hls_media_store_settings block "list" (Optional) {
              connection_retry_interval = number (Optional)
              filecache_duration = number (Optional)
              media_store_storage_class = string (Optional, Computed)
              num_retries = number (Optional)
              restart_delay = number (Optional)
            }

            hls_s3_settings block "list" (Optional) {
              canned_acl = string (Optional)
            }

            hls_webdav_settings block "list" (Optional) {
              connection_retry_interval = number (Optional)
              filecache_duration = number (Optional)
              http_transfer_mode = string (Optional, Computed)
              num_retries = number (Optional)
              restart_delay = number (Optional)
            }
          }

          key_provider_settings block "list" (Optional) {

            static_key_settings block "list" (Optional) {
              static_key_value = string (Required)

              key_provider_server block "list" (Optional) {
                uri = string (Required)
                password_param = string (Optional, Computed)
                username = string (Optional, Computed)
              }
            }
          }
        }

        media_package_group_settings block "list" (Optional) {

          destination block "list" (Required) {
            destination_ref_id = string (Required)
          }
        }

        ms_smooth_group_settings block "list" (Optional) {
          acquisition_point_id = string (Optional, Computed)
          audio_only_timecode_control = string (Optional, Computed)
          certificate_mode = string (Optional, Computed)
          connection_retry_interval = number (Optional, Computed)
          event_id = string (Optional, Computed)
          event_id_mode = string (Optional, Computed)
          event_stop_behavior = string (Optional, Computed)
          filecache_duration = number (Optional)
          fragment_length = number (Optional, Computed)
          input_loss_action = string (Optional, Computed)
          num_retries = number (Optional)
          restart_delay = number (Optional)
          segmentation_mode = string (Optional, Computed)
          send_delay_ms = number (Optional, Computed)
          sparse_track_type = string (Optional, Computed)
          stream_manifest_behavior = string (Optional, Computed)
          timestamp_offset = string (Optional, Computed)
          timestamp_offset_mode = string (Optional, Computed)

          destination block "list" (Required) {
            destination_ref_id = string (Required)
          }
        }

        multiplex_group_settings block "list" (Optional) {
        }

        rtmp_group_settings block "list" (Optional) {
          ad_markers = ['list', 'string'] (Optional)
          authentication_scheme = string (Optional, Computed)
          cache_full_behavior = string (Optional, Computed)
          cache_length = number (Optional, Computed)
          caption_data = string (Optional, Computed)
          input_loss_action = string (Optional, Computed)
          restart_delay = number (Optional)
        }

        udp_group_settings block "list" (Optional) {
          input_loss_action = string (Optional, Computed)
          timed_metadata_id3_frame = string (Optional, Computed)
          timed_metadata_id3_period = number (Optional, Computed)
        }
      }

      outputs block "list" (Required) {
        audio_description_names = ['set', 'string'] (Optional)
        caption_description_names = ['set', 'string'] (Optional, Computed)
        output_name = string (Optional)
        video_description_name = string (Optional)

        output_settings block "list" (Required) {

          archive_output_settings block "list" (Optional) {
            extension = string (Optional)
            name_modifier = string (Optional)

            container_settings block "list" (Optional) {

              m2ts_settings block "list" (Optional) {
                absent_input_audio_behavior = string (Optional, Computed)
                arib = string (Optional)
                arib_captions_pid = string (Optional, Computed)
                arib_captions_pid_control = string (Optional)
                audio_buffer_model = string (Optional)
                audio_frames_per_pes = number (Optional)
                audio_pids = string (Optional, Computed)
                audio_stream_type = string (Optional)
                bitrate = number (Optional)
                buffer_model = string (Optional)
                cc_descriptor = string (Optional)
                dvb_sub_pids = string (Optional, Computed)
                dvb_teletext_pid = string (Optional, Computed)
                ebif = string (Optional)
                ebp_audio_interval = string (Optional)
                ebp_lookahead_ms = number (Optional)
                ebp_placement = string (Optional)
                ecm_pid = string (Optional)
                es_rate_in_pes = string (Optional)
                etv_platform_pid = string (Optional, Computed)
                etv_signal_pid = string (Optional, Computed)
                fragment_time = number (Optional)
                klv = string (Optional)
                klv_data_pids = string (Optional, Computed)
                nielsen_id3_behavior = string (Optional)
                null_packet_bitrate = number (Optional)
                pat_interval = number (Optional)
                pcr_control = string (Optional)
                pcr_period = number (Optional)
                pcr_pid = string (Optional)
                pmt_interval = number (Optional)
                pmt_pid = string (Optional, Computed)
                program_num = number (Optional)
                rate_mode = string (Optional)
                scte27_pids = string (Optional, Computed)
                scte35_control = string (Optional)
                scte35_pid = string (Optional, Computed)
                segmentation_markers = string (Optional)
                segmentation_style = string (Optional)
                segmentation_time = number (Optional)
                timed_metadata_behavior = string (Optional)
                timed_metadata_pid = string (Optional, Computed)
                transport_stream_id = number (Optional)
                video_pid = string (Optional, Computed)

                dvb_nit_settings block "list" (Optional) {
                  network_id = number (Required)
                  network_name = string (Required)
                  rep_interval = number (Optional)
                }

                dvb_sdt_settings block "list" (Optional) {
                  output_sdt = string (Optional)
                  rep_interval = number (Optional)
                  service_name = string (Optional)
                  service_provider_name = string (Optional)
                }

                dvb_tdt_settings block "list" (Optional) {
                  rep_interval = number (Optional)
                }
              }

              raw_settings block "list" (Optional) {
              }
            }
          }

          frame_capture_output_settings block "list" (Optional) {
            name_modifier = string (Optional, Computed)
          }

          hls_output_settings block "list" (Optional) {
            h265_packaging_type = string (Optional, Computed)
            name_modifier = string (Optional, Computed)
            segment_modifier = string (Optional, Computed)

            hls_settings block "list" (Required) {

              audio_only_hls_settings block "list" (Optional) {
                audio_group_id = string (Optional, Computed)
                audio_track_type = string (Optional, Computed)
                segment_type = string (Optional, Computed)

                audio_only_image block "list" (Optional) {
                  uri = string (Required)
                  password_param = string (Optional, Computed)
                  username = string (Optional, Computed)
                }
              }

              fmp4_hls_settings block "list" (Optional) {
                audio_rendition_sets = string (Optional, Computed)
                nielsen_id3_behavior = string (Optional, Computed)
                timed_metadata_behavior = string (Optional, Computed)
              }

              frame_capture_hls_settings block "list" (Optional) {
              }

              standard_hls_settings block "list" (Optional) {
                audio_rendition_sets = string (Optional, Computed)

                m3u8_settings block "list" (Required) {
                  audio_frames_per_pes = number (Optional, Computed)
                  audio_pids = string (Optional, Computed)
                  ecm_pid = string (Optional, Computed)
                  nielsen_id3_behavior = string (Optional, Computed)
                  pat_interval = number (Optional, Computed)
                  pcr_control = string (Optional, Computed)
                  pcr_period = number (Optional, Computed)
                  pcr_pid = string (Optional, Computed)
                  pmt_interval = number (Optional, Computed)
                  pmt_pid = string (Optional, Computed)
                  program_num = number (Optional, Computed)
                  scte35_behavior = string (Optional, Computed)
                  scte35_pid = string (Optional, Computed)
                  timed_metadata_behavior = string (Optional, Computed)
                  timed_metadata_pid = string (Optional, Computed)
                  transport_stream_id = number (Optional, Computed)
                  video_pid = string (Optional, Computed)
                }
              }
            }
          }

          media_package_output_settings block "list" (Optional) {
          }

          ms_smooth_output_settings block "list" (Optional) {
            h265_packaging_type = string (Optional, Computed)
            name_modifier = string (Optional, Computed)
          }

          multiplex_output_settings block "list" (Optional) {

            destination block "list" (Required) {
              destination_ref_id = string (Required)
            }
          }

          rtmp_output_settings block "list" (Optional) {
            certificate_mode = string (Optional, Computed)
            connection_retry_interval = number (Optional, Computed)
            num_retries = number (Optional, Computed)

            destination block "list" (Required) {
              destination_ref_id = string (Required)
            }
          }

          udp_output_settings block "list" (Optional) {
            buffer_msec = number (Optional, Computed)

            container_settings block "list" (Required) {

              m2ts_settings block "list" (Optional) {
                absent_input_audio_behavior = string (Optional, Computed)
                arib = string (Optional)
                arib_captions_pid = string (Optional, Computed)
                arib_captions_pid_control = string (Optional)
                audio_buffer_model = string (Optional)
                audio_frames_per_pes = number (Optional)
                audio_pids = string (Optional, Computed)
                audio_stream_type = string (Optional)
                bitrate = number (Optional)
                buffer_model = string (Optional)
                cc_descriptor = string (Optional)
                dvb_sub_pids = string (Optional, Computed)
                dvb_teletext_pid = string (Optional, Computed)
                ebif = string (Optional)
                ebp_audio_interval = string (Optional)
                ebp_lookahead_ms = number (Optional)
                ebp_placement = string (Optional)
                ecm_pid = string (Optional)
                es_rate_in_pes = string (Optional)
                etv_platform_pid = string (Optional, Computed)
                etv_signal_pid = string (Optional, Computed)
                fragment_time = number (Optional)
                klv = string (Optional)
                klv_data_pids = string (Optional, Computed)
                nielsen_id3_behavior = string (Optional)
                null_packet_bitrate = number (Optional)
                pat_interval = number (Optional)
                pcr_control = string (Optional)
                pcr_period = number (Optional)
                pcr_pid = string (Optional)
                pmt_interval = number (Optional)
                pmt_pid = string (Optional, Computed)
                program_num = number (Optional)
                rate_mode = string (Optional)
                scte27_pids = string (Optional, Computed)
                scte35_control = string (Optional)
                scte35_pid = string (Optional, Computed)
                segmentation_markers = string (Optional)
                segmentation_style = string (Optional)
                segmentation_time = number (Optional)
                timed_metadata_behavior = string (Optional)
                timed_metadata_pid = string (Optional, Computed)
                transport_stream_id = number (Optional)
                video_pid = string (Optional, Computed)

                dvb_nit_settings block "list" (Optional) {
                  network_id = number (Required)
                  network_name = string (Required)
                  rep_interval = number (Optional)
                }

                dvb_sdt_settings block "list" (Optional) {
                  output_sdt = string (Optional)
                  rep_interval = number (Optional)
                  service_name = string (Optional)
                  service_provider_name = string (Optional)
                }

                dvb_tdt_settings block "list" (Optional) {
                  rep_interval = number (Optional)
                }
              }
            }

            destination block "list" (Required) {
              destination_ref_id = string (Required)
            }

            fec_output_settings block "list" (Optional) {
              column_depth = number (Optional, Computed)
              include_fec = string (Optional, Computed)
              row_length = number (Optional, Computed)
            }
          }
        }
      }
    }

    timecode_config block "list" (Required) {
      source = string (Required)
      sync_threshold = number (Optional, Computed)
    }

    video_descriptions block "list" (Optional) {
      name = string (Required)
      height = number (Optional, Computed)
      respond_to_afd = string (Optional, Computed)
      scaling_behavior = string (Optional, Computed)
      sharpness = number (Optional, Computed)
      width = number (Optional, Computed)

      codec_settings block "list" (Optional) {

        frame_capture_settings block "list" (Optional) {
          capture_interval = number (Optional, Computed)
          capture_interval_units = string (Optional, Computed)
        }

        h264_settings block "list" (Optional) {
          adaptive_quantization = string (Optional, Computed)
          afd_signaling = string (Optional, Computed)
          bitrate = number (Optional, Computed)
          buf_fill_pct = number (Optional, Computed)
          buf_size = number (Optional, Computed)
          color_metadata = string (Optional, Computed)
          entropy_encoding = string (Optional, Computed)
          fixed_afd = string (Optional, Computed)
          flicker_aq = string (Optional, Computed)
          force_field_pictures = string (Optional, Computed)
          framerate_control = string (Optional, Computed)
          framerate_denominator = number (Optional, Computed)
          framerate_numerator = number (Optional, Computed)
          gop_b_reference = string (Optional, Computed)
          gop_closed_cadence = number (Optional, Computed)
          gop_num_b_frames = number (Optional, Computed)
          gop_size = number (Optional, Computed)
          gop_size_units = string (Optional, Computed)
          level = string (Optional, Computed)
          look_ahead_rate_control = string (Optional, Computed)
          max_bitrate = number (Optional, Computed)
          min_i_interval = number (Optional, Computed)
          num_ref_frames = number (Optional, Computed)
          par_control = string (Optional, Computed)
          par_denominator = number (Optional, Computed)
          par_numerator = number (Optional, Computed)
          profile = string (Optional, Computed)
          quality_level = string (Optional, Computed)
          qvbr_quality_level = number (Optional, Computed)
          rate_control_mode = string (Optional, Computed)
          scan_type = string (Optional, Computed)
          scene_change_detect = string (Optional, Computed)
          slices = number (Optional, Computed)
          softness = number (Optional, Computed)
          spatial_aq = string (Optional, Computed)
          subgop_length = string (Optional, Computed)
          syntax = string (Optional, Computed)
          temporal_aq = string (Optional, Computed)
          timecode_insertion = string (Optional, Computed)

          filter_settings block "list" (Optional) {

            temporal_filter_settings block "list" (Optional) {
              post_filter_sharpening = string (Optional)
              strength = string (Optional)
            }
          }
        }

        h265_settings block "list" (Optional) {
          bitrate = number (Required)
          framerate_denominator = number (Required)
          framerate_numerator = number (Required)
          adaptive_quantization = string (Optional, Computed)
          afd_signaling = string (Optional, Computed)
          alternative_transfer_function = string (Optional, Computed)
          buf_size = number (Optional)
          color_metadata = string (Optional, Computed)
          fixed_afd = string (Optional, Computed)
          flicker_aq = string (Optional, Computed)
          gop_closed_cadence = number (Optional)
          gop_size = number (Optional)
          gop_size_units = string (Optional, Computed)
          level = string (Optional, Computed)
          look_ahead_rate_control = string (Optional, Computed)
          max_bitrate = number (Optional)
          min_i_interval = number (Optional)
          min_qp = number (Optional)
          mv_over_picture_boundaries = string (Optional, Computed)
          mv_temporal_predictor = string (Optional, Computed)
          par_denominator = number (Optional)
          par_numerator = number (Optional)
          profile = string (Optional, Computed)
          qvbr_quality_level = number (Optional)
          rate_control_mode = string (Optional, Computed)
          scan_type = string (Optional, Computed)
          scene_change_detect = string (Optional, Computed)
          slices = number (Optional)
          tier = string (Optional, Computed)
          tile_height = number (Optional)
          tile_padding = string (Optional, Computed)
          tile_width = number (Optional)
          timecode_insertion = string (Optional, Computed)
          treeblock_size = string (Optional, Computed)

          color_space_settings block "list" (Optional) {

            color_space_passthrough_settings block "list" (Optional) {
            }

            dolby_vision81_settings block "list" (Optional) {
            }

            hdr10_settings block "list" (Optional) {
              max_cll = number (Optional)
              max_fall = number (Optional)
            }

            rec601_settings block "list" (Optional) {
            }

            rec709_settings block "list" (Optional) {
            }
          }

          filter_settings block "list" (Optional) {

            temporal_filter_settings block "list" (Optional) {
              post_filter_sharpening = string (Optional)
              strength = string (Optional)
            }
          }

          timecode_burnin_settings block "list" (Optional) {
            prefix = string (Optional, Computed)
            timecode_burnin_font_size = string (Optional, Computed)
            timecode_burnin_position = string (Optional, Computed)
          }
        }
      }
    }
  }

  input_attachments block "set" (Required) {
    input_attachment_name = string (Required)
    input_id = string (Required)

    automatic_input_failover_settings block "list" (Optional) {
      secondary_input_id = string (Required)
      error_clear_time_msec = number (Optional)
      input_preference = string (Optional)

      failover_condition block "set" (Optional) {

        failover_condition_settings block "list" (Optional) {

          audio_silence_settings block "list" (Optional) {
            audio_selector_name = string (Required)
            audio_silence_threshold_msec = number (Optional)
          }

          input_loss_settings block "list" (Optional) {
            input_loss_threshold_msec = number (Optional)
          }

          video_black_settings block "list" (Optional) {
            black_detect_threshold = number (Optional)
            video_black_threshold_msec = number (Optional)
          }
        }
      }
    }

    input_settings block "list" (Optional) {
      deblock_filter = string (Optional)
      denoise_filter = string (Optional)
      filter_strength = number (Optional)
      input_filter = string (Optional, Computed)
      scte35_pid = number (Optional)
      smpte2038_data_preference = string (Optional)
      source_end_behavior = string (Optional)

      audio_selector block "list" (Optional) {
        name = string (Required)

        selector_settings block "list" (Optional) {

          audio_hls_rendition_selection block "list" (Optional) {
            group_id = string (Required)
            name = string (Required)
          }

          audio_language_selection block "list" (Optional) {
            language_code = string (Required)
            language_selection_policy = string (Optional)
          }

          audio_pid_selection block "list" (Optional) {
            pid = number (Required)
          }

          audio_track_selection block "list" (Optional) {

            dolby_e_decode block "list" (Optional) {
              program_selection = string (Required)
            }

            tracks block "set" (Required) {
              track = number (Required)
            }
          }
        }
      }

      caption_selector block "list" (Optional) {
        name = string (Required)
        language_code = string (Optional)

        selector_settings block "list" (Optional) {

          ancillary_source_settings block "list" (Optional) {
            source_ancillary_channel_number = number (Optional)
          }

          arib_source_settings block "list" (Optional) {
          }

          dvb_sub_source_settings block "list" (Optional) {
            ocr_language = string (Optional)
            pid = number (Optional)
          }

          embedded_source_settings block "list" (Optional) {
            convert_608_to_708 = string (Optional)
            scte20_detection = string (Optional)
            source_608_channel_number = number (Optional)
          }

          scte20_source_settings block "list" (Optional) {
            convert_608_to_708 = string (Optional)
            source_608_channel_number = number (Optional)
          }

          scte27_source_settings block "list" (Optional) {
            ocr_language = string (Optional)
            pid = number (Optional)
          }

          teletext_source_settings block "list" (Optional) {
            page_number = string (Optional)

            output_rectangle block "list" (Optional) {
              height = number (Required)
              left_offset = number (Required)
              top_offset = number (Required)
              width = number (Required)
            }
          }
        }
      }

      network_input_settings block "list" (Optional) {
        server_validation = string (Optional)

        hls_input_settings block "list" (Optional) {
          bandwidth = number (Optional)
          buffer_segments = number (Optional)
          retries = number (Optional)
          retry_interval = number (Optional)
          scte35_source = string (Optional)
        }
      }

      video_selector block "list" (Optional) {
        color_space = string (Optional)
        color_space_usage = string (Optional)
      }
    }
  }

  input_specification block "list" (Required) {
    codec = string (Required)
    input_resolution = string (Required)
    maximum_bitrate = string (Required)
  }

  maintenance block "list" (Optional) {
    maintenance_day = string (Required)
    maintenance_start_time = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc block "list" (Optional) {
    public_address_allocation_ids = ['list', 'string'] (Required)
    subnet_ids = ['set', 'string'] (Required)
    availability_zones = ['set', 'string'] (Computed)
    network_interface_ids = ['set', 'string'] (Computed)
    security_group_ids = ['set', 'string'] (Optional, Computed)
  }
}
