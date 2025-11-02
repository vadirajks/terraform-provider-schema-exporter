data "google_backup_dr_management_server" "name" {
  location = string (Required)
  id = string (Optional, Computed)
  management_uri = ['list', ['object', {'api': 'string', 'web_ui': 'string'}]] (Computed)
  name = string (Computed)
  networks = ['list', ['object', {'network': 'string', 'peering_mode': 'string'}]] (Computed)
  oauth2_client_id = string (Computed)
  project = string (Computed)
  type = string (Computed)
}
