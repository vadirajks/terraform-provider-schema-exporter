data "google_project_iam_custom_roles" "name" {
  id = string (Optional, Computed)
  project = string (Optional)
  roles = ['list', ['object', {'deleted': 'bool', 'description': 'string', 'id': 'string', 'name': 'string', 'permissions': ['list', 'string'], 'role_id': 'string', 'stage': 'string', 'title': 'string'}]] (Computed)
  show_deleted = bool (Optional)
  view = string (Optional)
}
