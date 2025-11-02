data "google_project_ancestry" "name" {
  ancestors = ['list', ['object', {'id': 'string', 'type': 'string'}]] (Computed)
  id = string (Optional, Computed)
  org_id = string (Computed)
  parent_id = string (Computed)
  parent_type = string (Computed)
  project = string (Optional)
}
