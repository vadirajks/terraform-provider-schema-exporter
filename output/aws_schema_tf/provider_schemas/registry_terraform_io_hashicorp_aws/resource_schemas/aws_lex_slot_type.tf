resource "aws_lex_slot_type" "name" {
  name = string (Required)
  checksum = string (Computed)
  create_version = bool (Optional)
  created_date = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  region = string (Optional, Computed)
  value_selection_strategy = string (Optional)
  version = string (Computed)

  enumeration_value block "set" (Required) {
    value = string (Required)
    synonyms = ['set', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
