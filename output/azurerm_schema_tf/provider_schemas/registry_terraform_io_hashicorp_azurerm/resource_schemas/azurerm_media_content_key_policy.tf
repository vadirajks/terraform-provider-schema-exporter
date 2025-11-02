resource "azurerm_media_content_key_policy" "name" {
  media_services_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  policy_option block "set"  (Required){
    name = string (Required)
    clear_key_configuration_enabled = bool (Optional)
    open_restriction_enabled = bool (Optional)
    playready_response_custom_data = string (Optional)
    widevine_configuration_template = string (Optional)

    fairplay_configuration block "list"  (Optional){
      ask = string (Optional)
      pfx = string (Optional)
      pfx_password = string (Optional)
      rental_and_lease_key_type = string (Optional)
      rental_duration_seconds = number (Optional)

      offline_rental_configuration block "list"  (Optional){
        playback_duration_seconds = number (Optional)
        storage_duration_seconds = number (Optional)
      }
    }

    playready_configuration_license block "list"  (Optional){
      allow_test_devices = bool (Optional)
      begin_date = string (Optional)
      content_key_location_from_header_enabled = bool (Optional)
      content_key_location_from_key_id = string (Optional)
      content_type = string (Optional)
      expiration_date = string (Optional)
      grace_period = string (Optional)
      license_type = string (Optional)
      relative_begin_date = string (Optional)
      relative_expiration_date = string (Optional)
      security_level = string (Optional)

      play_right block "list"  (Optional){
        agc_and_color_stripe_restriction = number (Optional)
        allow_passing_video_content_to_unknown_output = string (Optional)
        analog_video_opl = number (Optional)
        compressed_digital_audio_opl = number (Optional)
        compressed_digital_video_opl = number (Optional)
        digital_video_only_content_restriction = bool (Optional)
        first_play_expiration = string (Optional)
        image_constraint_for_analog_component_video_restriction = bool (Optional)
        image_constraint_for_analog_computer_monitor_restriction = bool (Optional)
        scms_restriction = number (Optional)
        uncompressed_digital_audio_opl = number (Optional)
        uncompressed_digital_video_opl = number (Optional)

        explicit_analog_television_output_restriction block "list"  (Optional){
          control_bits = number (Required)
          best_effort_enforced = bool (Optional)
        }
      }
    }

    token_restriction block "list"  (Optional){
      audience = string (Optional)
      issuer = string (Optional)
      open_id_connect_discovery_document = string (Optional)
      primary_rsa_token_key_exponent = string (Optional)
      primary_rsa_token_key_modulus = string (Optional)
      primary_symmetric_token_key = string (Optional)
      primary_x509_token_key_raw = string (Optional)
      token_type = string (Optional)

      alternate_key block "list"  (Optional){
        rsa_token_key_exponent = string (Optional)
        rsa_token_key_modulus = string (Optional)
        symmetric_token_key = string (Optional)
        x509_token_key_raw = string (Optional)
      }

      required_claim block "list"  (Optional){
        type = string (Optional)
        value = string (Optional)
      }
    }
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
