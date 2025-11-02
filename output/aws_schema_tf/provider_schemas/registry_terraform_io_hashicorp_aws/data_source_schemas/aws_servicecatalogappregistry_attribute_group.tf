data "aws_servicecatalogappregistry_attribute_group" "name" {
  arn = string (Optional, Computed)
  attributes = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)
}
