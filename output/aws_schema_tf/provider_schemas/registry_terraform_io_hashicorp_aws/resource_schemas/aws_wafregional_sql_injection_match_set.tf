resource "aws_wafregional_sql_injection_match_set" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  sql_injection_match_tuple block "set" (Optional) {
    text_transformation = string (Required)

    field_to_match block "list" (Required) {
      type = string (Required)
      data = string (Optional)
    }
  }
}
