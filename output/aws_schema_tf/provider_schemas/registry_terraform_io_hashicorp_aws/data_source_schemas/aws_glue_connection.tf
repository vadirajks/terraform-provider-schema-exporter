data "aws_glue_connection" "name" {
  id = string (Required)
  arn = string (Computed)
  athena_properties = ['map', 'string'] (Computed)
  catalog_id = string (Computed)
  connection_properties = ['map', 'string'] (Computed)
  connection_type = string (Computed)
  description = string (Computed)
  match_criteria = ['list', 'string'] (Computed)
  name = string (Computed)
  physical_connection_requirements = ['list', ['object', {'availability_zone': 'string', 'security_group_id_list': ['set', 'string'], 'subnet_id': 'string'}]] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
