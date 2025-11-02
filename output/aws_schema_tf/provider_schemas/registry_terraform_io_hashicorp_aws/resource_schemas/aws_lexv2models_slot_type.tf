resource "aws_lexv2models_slot_type" "name" {
  bot_id = string (Required)
  bot_version = string (Required)
  locale_id = string (Required)
  name = string (Required)
  description = string (Optional)
  id = string (Computed)
  parent_slot_type_signature = string (Optional)
  region = string (Optional, Computed)
  slot_type_id = string (Computed)

  composite_slot_type_setting block "list" (Optional) {

    sub_slots block "list" (Optional) {
      name = string (Required)
      slot_type_id = string (Required)
    }
  }

  external_source_setting block "list" (Optional) {

    grammar_slot_type_setting block "list" (Optional) {

      source block "list" (Optional) {
        kms_key_arn = string (Required)
        s3_bucket_name = string (Required)
        s3_object_key = string (Required)
      }
    }
  }

  slot_type_values block "list" (Optional) {

    sample_value block "list" (Optional) {
      value = string (Required)
    }

    synonyms block "list" (Optional) {
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  value_selection_setting block "list" (Optional) {
    resolution_strategy = string (Required)

    advanced_recognition_setting block "list" (Optional) {
      audio_recognition_strategy = string (Optional)
    }

    regex_filter block "list" (Optional) {
      pattern = string (Required)
    }
  }
}
