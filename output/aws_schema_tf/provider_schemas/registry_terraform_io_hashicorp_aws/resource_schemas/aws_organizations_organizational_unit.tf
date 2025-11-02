resource "aws_organizations_organizational_unit" "name" {
  name = string (Required)
  parent_id = string (Required)
  accounts = ['list', ['object', {'arn': 'string', 'email': 'string', 'id': 'string', 'name': 'string'}]] (Computed)
  arn = string (Computed)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
