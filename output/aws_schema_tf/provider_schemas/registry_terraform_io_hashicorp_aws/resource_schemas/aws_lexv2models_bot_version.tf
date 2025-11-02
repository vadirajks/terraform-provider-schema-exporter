resource "aws_lexv2models_bot_version" "name" {
  bot_id = string (Required)
  locale_specification = ['map', ['object', {'source_bot_version': 'string'}]] (Required)
  bot_version = string (Optional, Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
