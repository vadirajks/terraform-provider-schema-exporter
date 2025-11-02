resource "aws_glue_classifier" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  csv_classifier block "list" (Optional) {
    allow_single_column = bool (Optional)
    contains_header = string (Optional)
    custom_datatype_configured = bool (Optional)
    custom_datatypes = ['list', 'string'] (Optional)
    delimiter = string (Optional)
    disable_value_trimming = bool (Optional)
    header = ['list', 'string'] (Optional)
    quote_symbol = string (Optional)
    serde = string (Optional, Computed)
  }

  grok_classifier block "list" (Optional) {
    classification = string (Required)
    grok_pattern = string (Required)
    custom_patterns = string (Optional)
  }

  json_classifier block "list" (Optional) {
    json_path = string (Required)
  }

  xml_classifier block "list" (Optional) {
    classification = string (Required)
    row_tag = string (Required)
  }
}
