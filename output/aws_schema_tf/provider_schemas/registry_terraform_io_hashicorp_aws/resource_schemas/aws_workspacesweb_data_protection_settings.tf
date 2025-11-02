resource "aws_workspacesweb_data_protection_settings" "name" {
  display_name = string (Required)
  additional_encryption_context = ['map', 'string'] (Optional)
  associated_portal_arns = ['list', 'string'] (Computed)
  customer_managed_key = string (Optional)
  data_protection_settings_arn = string (Computed)
  description = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  inline_redaction_configuration block "list" (Optional) {
    global_confidence_level = number (Optional)
    global_enforced_urls = ['list', 'string'] (Optional)
    global_exempt_urls = ['list', 'string'] (Optional)

    inline_redaction_pattern block "list" (Optional) {
      built_in_pattern_id = string (Optional)
      confidence_level = number (Optional)
      enforced_urls = ['list', 'string'] (Optional)
      exempt_urls = ['list', 'string'] (Optional)

      custom_pattern block "list" (Optional) {
        pattern_name = string (Required)
        pattern_regex = string (Required)
        keyword_regex = string (Optional)
        pattern_description = string (Optional)
      }

      redaction_place_holder block "list" (Optional) {
        redaction_place_holder_type = string (Required)
        redaction_place_holder_text = string (Optional)
      }
    }
  }
}
