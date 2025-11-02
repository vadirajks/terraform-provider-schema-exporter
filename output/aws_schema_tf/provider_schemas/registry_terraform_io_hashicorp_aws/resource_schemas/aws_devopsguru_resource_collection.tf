resource "aws_devopsguru_resource_collection" "name" {
  type = string (Required)
  id = string (Computed)
  region = string (Optional, Computed)

  cloudformation block "list" (Optional) {
    stack_names = ['list', 'string'] (Required)
  }

  tags block "list" (Optional) {
    app_boundary_key = string (Required)
    tag_values = ['list', 'string'] (Required)
  }
}
