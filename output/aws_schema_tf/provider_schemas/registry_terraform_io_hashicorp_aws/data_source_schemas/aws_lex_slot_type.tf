data "aws_lex_slot_type" "name" {
  name = string (Required)
  checksum = string (Computed)
  created_date = string (Computed)
  description = string (Computed)
  enumeration_value = ['set', ['object', {'synonyms': ['list', 'string'], 'value': 'string'}]] (Computed)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  region = string (Optional, Computed)
  value_selection_strategy = string (Computed)
  version = string (Optional)
}
