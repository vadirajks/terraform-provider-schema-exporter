data "aws_organizations_organizational_unit_descendant_organizational_units" "name" {
  parent_id = string (Required)
  children = ['list', ['object', {'arn': 'string', 'id': 'string', 'name': 'string'}]] (Computed)
  id = string (Optional, Computed)
}
