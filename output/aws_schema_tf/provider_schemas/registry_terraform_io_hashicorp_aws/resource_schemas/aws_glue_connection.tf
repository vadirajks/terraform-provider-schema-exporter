resource "aws_glue_connection" "name" {
  name = string (Required)
  arn = string (Computed)
  athena_properties = ['map', 'string'] (Optional)
  catalog_id = string (Optional, Computed)
  connection_properties = ['map', 'string'] (Optional)
  connection_type = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  match_criteria = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  physical_connection_requirements block "list" (Optional) {
    availability_zone = string (Optional)
    security_group_id_list = ['set', 'string'] (Optional)
    subnet_id = string (Optional)
  }
}
