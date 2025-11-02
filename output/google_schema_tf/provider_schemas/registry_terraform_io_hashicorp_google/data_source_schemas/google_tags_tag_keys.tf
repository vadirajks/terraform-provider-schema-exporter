data "google_tags_tag_keys" "name" {
  parent = string (Required)
  id = string (Optional, Computed)
  keys = ['list', ['object', {'create_time': 'string', 'description': 'string', 'name': 'string', 'namespaced_name': 'string', 'parent': 'string', 'purpose': 'string', 'purpose_data': ['map', 'string'], 'short_name': 'string', 'update_time': 'string'}]] (Computed)
}
