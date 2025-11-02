resource "aws_servicecatalogappregistry_application" "name" {
  name = string (Required)
  application_tag = ['map', 'string'] (Computed)
  arn = string (Computed)
  description = string (Optional)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
