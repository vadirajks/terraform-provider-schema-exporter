resource "aws_iot_thing_group" "name" {
  name = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  metadata = ['list', ['object', {'creation_date': 'string', 'parent_group_name': 'string', 'root_to_parent_groups': ['list', ['object', {'group_arn': 'string', 'group_name': 'string'}]]}]] (Computed)
  parent_group_name = string (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = number (Computed)

  properties block "list" (Optional) {
    description = string (Optional)

    attribute_payload block "list" (Optional) {
      attributes = ['map', 'string'] (Optional)
    }
  }
}
