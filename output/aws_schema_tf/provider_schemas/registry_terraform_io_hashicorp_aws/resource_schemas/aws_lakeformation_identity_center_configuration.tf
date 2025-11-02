resource "aws_lakeformation_identity_center_configuration" "name" {
  instance_arn = string (Required)
  application_arn = string (Computed)
  catalog_id = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_share = string (Computed)
}
