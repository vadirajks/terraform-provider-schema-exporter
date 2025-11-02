data "aws_workspaces_bundle" "name" {
  bundle_id = string (Optional)
  compute_type = ['list', ['object', {'name': 'string'}]] (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional)
  owner = string (Optional)
  region = string (Optional, Computed)
  root_storage = ['list', ['object', {'capacity': 'string'}]] (Computed)
  user_storage = ['list', ['object', {'capacity': 'string'}]] (Computed)
}
