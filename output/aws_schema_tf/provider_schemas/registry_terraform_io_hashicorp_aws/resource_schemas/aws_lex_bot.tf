resource "aws_lex_bot" "name" {
  child_directed = bool (Required)
  name = string (Required)
  arn = string (Computed)
  checksum = string (Computed)
  create_version = bool (Optional)
  created_date = string (Computed)
  description = string (Optional)
  detect_sentiment = bool (Optional)
  enable_model_improvements = bool (Optional)
  failure_reason = string (Computed)
  id = string (Optional, Computed)
  idle_session_ttl_in_seconds = number (Optional)
  last_updated_date = string (Computed)
  locale = string (Optional)
  nlu_intent_confidence_threshold = number (Optional)
  process_behavior = string (Optional)
  region = string (Optional, Computed)
  status = string (Computed)
  version = string (Computed)
  voice_id = string (Optional, Computed)

  abort_statement block "list" (Required) {
    response_card = string (Optional)

    message block "set" (Required) {
      content = string (Required)
      content_type = string (Required)
      group_number = number (Optional)
    }
  }

  clarification_prompt block "list" (Optional) {
    max_attempts = number (Required)
    response_card = string (Optional)

    message block "set" (Required) {
      content = string (Required)
      content_type = string (Required)
      group_number = number (Optional)
    }
  }

  intent block "set" (Required) {
    intent_name = string (Required)
    intent_version = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
