resource "aws_bedrock_guardrail" "name" {
  blocked_input_messaging = string (Required)
  blocked_outputs_messaging = string (Required)
  name = string (Required)
  created_at = string (Computed)
  description = string (Optional, Computed)
  guardrail_arn = string (Computed)
  guardrail_id = string (Computed)
  kms_key_arn = string (Optional)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
  version = string (Computed)

  content_policy_config block "list" (Optional) {
    tier_config = ['list', ['object', {'tier_name': 'string'}]] (Optional, Computed)

    filters_config block "set" (Optional) {
      input_strength = string (Required)
      output_strength = string (Required)
      type = string (Required)
    }
  }

  contextual_grounding_policy_config block "list" (Optional) {

    filters_config block "list" (Optional) {
      threshold = number (Required)
      type = string (Required)
    }
  }

  cross_region_config block "list" (Optional) {
    guardrail_profile_identifier = string (Required)
  }

  sensitive_information_policy_config block "list" (Optional) {

    pii_entities_config block "list" (Optional) {
      action = string (Required)
      type = string (Required)
      input_action = string (Optional, Computed)
      input_enabled = bool (Optional, Computed)
      output_action = string (Optional, Computed)
      output_enabled = bool (Optional, Computed)
    }

    regexes_config block "list" (Optional) {
      action = string (Required)
      name = string (Required)
      pattern = string (Required)
      description = string (Optional, Computed)
      input_action = string (Optional, Computed)
      input_enabled = bool (Optional, Computed)
      output_action = string (Optional, Computed)
      output_enabled = bool (Optional, Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  topic_policy_config block "list" (Optional) {
    tier_config = ['list', ['object', {'tier_name': 'string'}]] (Optional, Computed)

    topics_config block "list" (Optional) {
      definition = string (Required)
      name = string (Required)
      type = string (Required)
      examples = ['list', 'string'] (Optional, Computed)
    }
  }

  word_policy_config block "list" (Optional) {

    managed_word_lists_config block "list" (Optional) {
      type = string (Required)
      input_action = string (Optional)
      input_enabled = bool (Optional)
      output_action = string (Optional)
      output_enabled = bool (Optional)
    }

    words_config block "list" (Optional) {
      text = string (Required)
      input_action = string (Optional)
      input_enabled = bool (Optional)
      output_action = string (Optional)
      output_enabled = bool (Optional)
    }
  }
}
