resource "aws_iot_thing_type" "name" {
  name = string (Required)
  arn = string (Computed)
  deprecated = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  properties block "list" (Optional) {
    description = string (Optional)
    searchable_attributes = ['set', 'string'] (Optional, Computed)
  }
}
