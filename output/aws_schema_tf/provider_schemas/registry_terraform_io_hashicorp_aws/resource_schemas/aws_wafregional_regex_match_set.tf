resource "aws_wafregional_regex_match_set" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  regex_match_tuple block "set" (Optional) {
    regex_pattern_set_id = string (Required)
    text_transformation = string (Required)

    field_to_match block "list" (Required) {
      type = string (Required)
      data = string (Optional)
    }
  }
}
