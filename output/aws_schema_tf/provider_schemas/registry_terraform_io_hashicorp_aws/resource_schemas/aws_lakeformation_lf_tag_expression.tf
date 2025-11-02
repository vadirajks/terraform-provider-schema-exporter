resource "aws_lakeformation_lf_tag_expression" "name" {
  name = string (Required)
  catalog_id = string (Optional, Computed)
  description = string (Optional)
  region = string (Optional, Computed)

  expression block "set" (Optional) {
    tag_key = string (Required)
    tag_values = ['set', 'string'] (Required)
  }
}
