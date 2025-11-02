data "google_projects" "name" {
  filter = string (Required)
  id = string (Optional, Computed)
  projects = ['list', ['object', {'create_time': 'string', 'labels': ['map', 'string'], 'lifecycle_state': 'string', 'name': 'string', 'number': 'string', 'parent': ['map', 'string'], 'project_id': 'string'}]] (Computed)
}
