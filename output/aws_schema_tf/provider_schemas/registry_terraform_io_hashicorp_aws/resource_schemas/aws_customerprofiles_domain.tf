resource "aws_customerprofiles_domain" "name" {
  default_expiration_days = number (Required)
  domain_name = string (Required)
  arn = string (Computed)
  dead_letter_queue_url = string (Optional)
  default_encryption_key = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  matching block "list" (Optional) {
    enabled = bool (Required)

    auto_merging block "list" (Optional) {
      enabled = bool (Required)
      min_allowed_confidence_score_for_merging = number (Optional)

      conflict_resolution block "list" (Optional) {
        conflict_resolving_model = string (Required)
        source_name = string (Optional)
      }

      consolidation block "list" (Optional) {
        matching_attributes_list = ['list', ['list', 'string']] (Required)
      }
    }

    exporting_config block "list" (Optional) {

      s3_exporting block "list" (Optional) {
        s3_bucket_name = string (Required)
        s3_key_name = string (Optional)
      }
    }

    job_schedule block "list" (Optional) {
      day_of_the_week = string (Required)
      time = string (Required)
    }
  }

  rule_based_matching block "list" (Optional) {
    enabled = bool (Required)
    max_allowed_rule_level_for_matching = number (Optional)
    max_allowed_rule_level_for_merging = number (Optional)
    status = string (Optional, Computed)

    attribute_types_selector block "list" (Optional) {
      attribute_matching_model = string (Required)
      address = ['list', 'string'] (Optional)
      email_address = ['list', 'string'] (Optional)
      phone_number = ['list', 'string'] (Optional)
    }

    conflict_resolution block "list" (Optional) {
      conflict_resolving_model = string (Required)
      source_name = string (Optional)
    }

    exporting_config block "list" (Optional) {

      s3_exporting block "list" (Optional) {
        s3_bucket_name = string (Required)
        s3_key_name = string (Optional)
      }
    }

    matching_rules block "set" (Optional) {
      rule = ['list', 'string'] (Required)
    }
  }
}
