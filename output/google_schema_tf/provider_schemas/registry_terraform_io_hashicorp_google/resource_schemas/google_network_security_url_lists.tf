resource "google_network_security_url_lists" "name" {
  location = string (Required)
  name = string (Required)
  values = ['list', 'string'] (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
