data "aws_organizations_resource_tags" "name" {
  resource_id = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
