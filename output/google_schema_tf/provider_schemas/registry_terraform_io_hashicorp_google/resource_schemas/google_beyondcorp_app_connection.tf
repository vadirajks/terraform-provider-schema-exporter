resource "google_beyondcorp_app_connection" "name" {
  name = string (Required)
  connectors = ['list', 'string'] (Optional)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  region = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  type = string (Optional)

  application_endpoint block "list" (Required) {
    host = string (Required)
    port = number (Required)
  }

  gateway block "list" (Optional) {
    app_gateway = string (Required)
    ingress_port = number (Computed)
    type = string (Optional)
    uri = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
