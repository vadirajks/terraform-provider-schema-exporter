data "google_folders" "name" {
  parent_id = string (Required)
  folders = ['list', ['object', {'create_time': 'string', 'delete_time': 'string', 'display_name': 'string', 'etag': 'string', 'name': 'string', 'parent': 'string', 'state': 'string', 'update_time': 'string'}]] (Computed)
  id = string (Optional, Computed)
}
