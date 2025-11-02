resource "aws_appmesh_virtual_router" "name" {
  mesh_name = string (Required)
  name = string (Required)
  arn = string (Computed)
  created_date = string (Computed)
  id = string (Optional, Computed)
  last_updated_date = string (Computed)
  mesh_owner = string (Optional, Computed)
  region = string (Optional, Computed)
  resource_owner = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  spec block "list" (Required) {

    listener block "list" (Optional) {

      port_mapping block "list" (Required) {
        port = number (Required)
        protocol = string (Required)
      }
    }
  }
}
