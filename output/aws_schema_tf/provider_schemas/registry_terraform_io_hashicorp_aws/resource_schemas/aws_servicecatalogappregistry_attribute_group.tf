resource "aws_servicecatalogappregistry_attribute_group" "name" {
  attributes = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
