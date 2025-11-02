resource "google_backup_dr_management_server" "name" {
  location = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  management_uri = ['list', ['object', {'api': 'string', 'web_ui': 'string'}]] (Computed)
  oauth2_client_id = string (Computed)
  project = string (Optional, Computed)
  type = string (Optional)

  networks block "list" (Optional) {
    network = string (Required)
    peering_mode = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
