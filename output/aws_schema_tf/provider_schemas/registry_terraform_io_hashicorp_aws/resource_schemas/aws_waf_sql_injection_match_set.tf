resource "aws_waf_sql_injection_match_set" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)

  sql_injection_match_tuples block "set" (Optional) {
    text_transformation = string (Required)

    field_to_match block "list" (Required) {
      type = string (Required)
      data = string (Optional)
    }
  }
}
