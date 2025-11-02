resource "aws_appmesh_virtual_service" "name" {
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

    provider block "list" (Optional) {

      virtual_node block "list" (Optional) {
        virtual_node_name = string (Required)
      }

      virtual_router block "list" (Optional) {
        virtual_router_name = string (Required)
      }
    }
  }
}
