data "aws_servicecatalogappregistry_application" "name" {
  id = string (Required)
  application_tag = ['map', 'string'] (Computed)
  arn = string (Computed)
  description = string (Computed)
  name = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)
}
