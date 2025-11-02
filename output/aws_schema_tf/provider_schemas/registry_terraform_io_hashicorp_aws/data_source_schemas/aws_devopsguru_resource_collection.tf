data "aws_devopsguru_resource_collection" "name" {
  type = string (Required)
  cloudformation = ['list', ['object', {'stack_names': ['list', 'string']}]] (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['list', ['object', {'app_boundary_key': 'string', 'tag_values': ['list', 'string']}]] (Computed)
}
