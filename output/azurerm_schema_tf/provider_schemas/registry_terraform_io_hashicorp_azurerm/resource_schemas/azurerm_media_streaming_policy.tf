resource "azurerm_media_streaming_policy" "name" {
  media_services_account_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  default_content_key_policy_name = string (Optional)
  id = string (Optional, Computed)

  common_encryption_cbcs block "list"  (Optional){

    clear_key_encryption block "list"  (Optional){
      custom_keys_acquisition_url_template = string (Required)
    }

    default_content_key block "list"  (Optional){
      label = string (Optional)
      policy_name = string (Optional)
    }

    drm_fairplay block "list"  (Optional){
      allow_persistent_license = bool (Optional)
      custom_license_acquisition_url_template = string (Optional)
    }

    enabled_protocols block "list"  (Optional){
      dash = bool (Optional)
      download = bool (Optional)
      hls = bool (Optional)
      smooth_streaming = bool (Optional)
    }
  }

  common_encryption_cenc block "list"  (Optional){
    drm_widevine_custom_license_acquisition_url_template = string (Optional)

    clear_key_encryption block "list"  (Optional){
      custom_keys_acquisition_url_template = string (Required)
    }

    clear_track block "set"  (Optional){

      condition block "set"  (Required){
        operation = string (Required)
        property = string (Required)
        value = string (Required)
      }
    }

    content_key_to_track_mapping block "set"  (Optional){
      label = string (Optional)
      policy_name = string (Optional)

      track block "set"  (Required){

        condition block "set"  (Required){
          operation = string (Required)
          property = string (Required)
          value = string (Required)
        }
      }
    }

    default_content_key block "list"  (Optional){
      label = string (Optional)
      policy_name = string (Optional)
    }

    drm_playready block "list"  (Optional){
      custom_attributes = string (Optional)
      custom_license_acquisition_url_template = string (Optional)
    }

    enabled_protocols block "list"  (Optional){
      dash = bool (Optional)
      download = bool (Optional)
      hls = bool (Optional)
      smooth_streaming = bool (Optional)
    }
  }

  envelope_encryption block "list"  (Optional){
    custom_keys_acquisition_url_template = string (Optional)

    default_content_key block "list"  (Optional){
      label = string (Optional)
      policy_name = string (Optional)
    }

    enabled_protocols block "list"  (Optional){
      dash = bool (Optional)
      download = bool (Optional)
      hls = bool (Optional)
      smooth_streaming = bool (Optional)
    }
  }

  no_encryption_enabled_protocols block "list"  (Optional){
    dash = bool (Optional)
    download = bool (Optional)
    hls = bool (Optional)
    smooth_streaming = bool (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
