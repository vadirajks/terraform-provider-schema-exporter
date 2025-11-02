data "google_tags_tag_values" "name" {
  parent = string (Required)
  id = string (Optional, Computed)
  values = ['list', ['object', {'create_time': 'string', 'description': 'string', 'name': 'string', 'namespaced_name': 'string', 'parent': 'string', 'short_name': 'string', 'update_time': 'string'}]] (Computed)
}
