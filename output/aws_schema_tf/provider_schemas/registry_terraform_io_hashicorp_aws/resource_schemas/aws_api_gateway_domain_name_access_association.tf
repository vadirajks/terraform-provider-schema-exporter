resource "aws_api_gateway_domain_name_access_association" "name" {
  access_association_source = string (Required)
  access_association_source_type = string (Required)
  domain_name_arn = string (Required)
  arn = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)
}
