resource "aws_waf_geo_match_set" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)

  geo_match_constraint block "set" (Optional) {
    type = string (Required)
    value = string (Required)
  }
}
