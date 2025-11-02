data "aws_servicecatalogappregistry_attribute_group_associations" "name" {
  attribute_group_ids = ['set', 'string'] (Computed)
  id = string (Optional)
  name = string (Optional)
  region = string (Optional, Computed)
}
