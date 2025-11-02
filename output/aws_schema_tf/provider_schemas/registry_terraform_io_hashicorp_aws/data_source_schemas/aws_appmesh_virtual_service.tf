data "aws_appmesh_virtual_service" "name" {
  mesh_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  mesh_owner = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_owner = string (Computed)
  spec = ['list', ['object', {'provider': ['list', ['object', {'virtual_node': ['list', ['object', {'virtual_node_name': 'string'}]], 'virtual_router': ['list', ['object', {'virtual_router_name': 'string'}]]}]]}]] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
