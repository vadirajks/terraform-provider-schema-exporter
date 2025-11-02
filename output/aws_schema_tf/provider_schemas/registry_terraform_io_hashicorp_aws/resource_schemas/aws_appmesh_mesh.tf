resource "aws_appmesh_mesh" "name" {
  name = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  mesh_owner = string (Computed)
  region = string (Optional, Computed)
  resource_owner = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  spec block "list" (Optional) {

    egress_filter block "list" (Optional) {
      type = string (Optional)
    }

    service_discovery block "list" (Optional) {
      ip_preference = string (Optional)
    }
  }
}
