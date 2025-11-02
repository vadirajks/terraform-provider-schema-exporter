resource "aws_lexv2models_bot_locale" "name" {
  bot_id = string (Required)
  bot_version = string (Required)
  locale_id = string (Required)
  n_lu_intent_confidence_threshold = number (Required)
  description = string (Optional)
  id = string (Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  voice_settings block "list" (Optional) {
    voice_id = string (Required)
    engine = string (Optional, Computed)
  }
}
