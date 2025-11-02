data "aws_appmesh_mesh" "name" {
  name = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  mesh_owner = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_owner = string (Computed)
  spec = ['list', ['object', {'egress_filter': ['list', ['object', {'type': 'string'}]], 'service_discovery': ['list', ['object', {'ip_preference': 'string'}]]}]] (Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
