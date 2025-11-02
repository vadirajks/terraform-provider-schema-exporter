resource "google_model_armor_floorsetting" "name" {
  location = string (Required)
  parent = string (Required)
  create_time = string (Computed)
  enable_floor_setting_enforcement = bool (Optional)
  id = string (Optional, Computed)
  integrated_services = ['list', 'string'] (Optional)
  name = string (Computed)
  update_time = string (Computed)

  ai_platform_floor_setting block "list" (Optional) {
    enable_cloud_logging = bool (Optional)
    inspect_and_block = bool (Optional)
    inspect_only = bool (Optional)
  }

  filter_config block "list" (Required) {

    malicious_uri_filter_settings block "list" (Optional) {
      filter_enforcement = string (Optional)
    }

    pi_and_jailbreak_filter_settings block "list" (Optional) {
      confidence_level = string (Optional)
      filter_enforcement = string (Optional)
    }

    rai_settings block "list" (Optional) {

      rai_filters block "list" (Required) {
        filter_type = string (Required)
        confidence_level = string (Optional)
      }
    }

    sdp_settings block "list" (Optional) {

      advanced_config block "list" (Optional) {
        deidentify_template = string (Optional)
        inspect_template = string (Optional)
      }

      basic_config block "list" (Optional) {
        filter_enforcement = string (Optional)
      }
    }
  }

  floor_setting_metadata block "list" (Optional) {

    multi_language_detection block "list" (Optional) {
      enable_multi_language_detection = bool (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
