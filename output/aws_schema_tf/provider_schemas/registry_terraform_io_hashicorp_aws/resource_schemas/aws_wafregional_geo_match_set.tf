resource "aws_wafregional_geo_match_set" "name" {
  name = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  geo_match_constraint block "set" (Optional) {
    type = string (Required)
    value = string (Required)
  }
}
