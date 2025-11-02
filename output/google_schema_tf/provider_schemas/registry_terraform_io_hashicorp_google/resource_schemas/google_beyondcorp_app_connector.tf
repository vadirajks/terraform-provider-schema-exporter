resource "google_beyondcorp_app_connector" "name" {
  name = string (Required)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  region = string (Optional)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  principal_info block "list" (Required) {

    service_account block "list" (Required) {
      email = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
