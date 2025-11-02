resource "aws_servicecatalogappregistry_attribute_group_association" "name" {
  application_id = string (Required)
  attribute_group_id = string (Required)
  region = string (Optional, Computed)
}
