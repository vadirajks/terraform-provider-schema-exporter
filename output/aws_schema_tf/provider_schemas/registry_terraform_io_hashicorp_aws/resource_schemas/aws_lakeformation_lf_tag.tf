resource "aws_lakeformation_lf_tag" "name" {
  key = string (Required)
  values = ['set', 'string'] (Required)
  catalog_id = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
