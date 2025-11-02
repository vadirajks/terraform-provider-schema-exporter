resource "google_model_armor_template" "name" {
  location = string (Required)
  template_id = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

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

  template_metadata block "list" (Optional) {
    custom_llm_response_safety_error_code = number (Optional)
    custom_llm_response_safety_error_message = string (Optional)
    custom_prompt_safety_error_code = number (Optional)
    custom_prompt_safety_error_message = string (Optional)
    enforcement_type = string (Optional)
    ignore_partial_invocation_failures = bool (Optional)
    log_sanitize_operations = bool (Optional)
    log_template_operations = bool (Optional)

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
