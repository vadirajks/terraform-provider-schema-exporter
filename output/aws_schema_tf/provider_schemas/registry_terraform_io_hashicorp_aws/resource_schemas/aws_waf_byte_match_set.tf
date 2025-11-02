resource "aws_waf_byte_match_set" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)

  byte_match_tuples block "set" (Optional) {
    positional_constraint = string (Required)
    text_transformation = string (Required)
    target_string = string (Optional)

    field_to_match block "list" (Required) {
      type = string (Required)
      data = string (Optional)
    }
  }
}
