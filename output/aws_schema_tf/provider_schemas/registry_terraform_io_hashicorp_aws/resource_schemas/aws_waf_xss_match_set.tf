resource "aws_waf_xss_match_set" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)

  xss_match_tuples block "set" (Optional) {
    text_transformation = string (Required)

    field_to_match block "list" (Required) {
      type = string (Required)
      data = string (Optional)
    }
  }
}
