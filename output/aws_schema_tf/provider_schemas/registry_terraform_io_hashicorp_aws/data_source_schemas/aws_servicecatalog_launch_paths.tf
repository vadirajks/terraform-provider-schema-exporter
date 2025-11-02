data "aws_servicecatalog_launch_paths" "name" {
  product_id = string (Required)
  accept_language = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  summaries = ['list', ['object', {'constraint_summaries': ['list', ['object', {'description': 'string', 'type': 'string'}]], 'name': 'string', 'path_id': 'string', 'tags': ['map', 'string']}]] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
