resource "google_beyondcorp_app_gateway" "name" {
  name = string (Required)
  allocated_connections = ['list', ['object', {'ingress_port': 'number', 'psc_uri': 'string'}]] (Computed)
  display_name = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  host_type = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  region = string (Optional)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  type = string (Optional)
  uri = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
