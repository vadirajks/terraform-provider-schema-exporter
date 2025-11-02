data "aws_appmesh_virtual_router" "name" {
  mesh_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  mesh_owner = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_owner = string (Computed)
  spec = ['list', ['object', {'listener': ['list', ['object', {'port_mapping': ['list', ['object', {'port': 'number', 'protocol': 'string'}]]}]]}]] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
