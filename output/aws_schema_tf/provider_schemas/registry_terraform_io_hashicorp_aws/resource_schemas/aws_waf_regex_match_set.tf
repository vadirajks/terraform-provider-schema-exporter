resource "aws_waf_regex_match_set" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)

  regex_match_tuple block "set" (Optional) {
    regex_pattern_set_id = string (Required)
    text_transformation = string (Required)

    field_to_match block "list" (Required) {
      type = string (Required)
      data = string (Optional)
    }
  }
}
