resource "aws_lex_intent" "name" {
  name = string (Required)
  arn = string (Computed)
  checksum = string (Computed)
  create_version = bool (Optional)
  created_date = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  parent_intent_signature = string (Optional)
  region = string (Optional, Computed)
  sample_utterances = ['set', 'string'] (Optional)
  version = string (Computed)

  conclusion_statement block "list" (Optional) {
    response_card = string (Optional)

    message block "set" (Required) {
      content = string (Required)
      content_type = string (Required)
      group_number = number (Optional)
    }
  }

  confirmation_prompt block "list" (Optional) {
    max_attempts = number (Required)
    response_card = string (Optional)

    message block "set" (Required) {
      content = string (Required)
      content_type = string (Required)
      group_number = number (Optional)
    }
  }

  dialog_code_hook block "list" (Optional) {
    message_version = string (Required)
    uri = string (Required)
  }

  follow_up_prompt block "list" (Optional) {

    prompt block "list" (Required) {
      max_attempts = number (Required)
      response_card = string (Optional)

      message block "set" (Required) {
        content = string (Required)
        content_type = string (Required)
        group_number = number (Optional)
      }
    }

    rejection_statement block "list" (Required) {
      response_card = string (Optional)

      message block "set" (Required) {
        content = string (Required)
        content_type = string (Required)
        group_number = number (Optional)
      }
    }
  }

  fulfillment_activity block "list" (Required) {
    type = string (Required)

    code_hook block "list" (Optional) {
      message_version = string (Required)
      uri = string (Required)
    }
  }

  rejection_statement block "list" (Optional) {
    response_card = string (Optional)

    message block "set" (Required) {
      content = string (Required)
      content_type = string (Required)
      group_number = number (Optional)
    }
  }

  slot block "set" (Optional) {
    name = string (Required)
    slot_constraint = string (Required)
    slot_type = string (Required)
    description = string (Optional)
    priority = number (Optional)
    response_card = string (Optional)
    sample_utterances = ['list', 'string'] (Optional)
    slot_type_version = string (Optional)

    value_elicitation_prompt block "list" (Optional) {
      max_attempts = number (Required)
      response_card = string (Optional)

      message block "set" (Required) {
        content = string (Required)
        content_type = string (Required)
        group_number = number (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
