data "aws_organizations_organizational_unit" "name" {
  name = string (Required)
  parent_id = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
}
