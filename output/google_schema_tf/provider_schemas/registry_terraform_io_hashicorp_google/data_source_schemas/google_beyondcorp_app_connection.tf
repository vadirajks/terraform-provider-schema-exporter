data "google_beyondcorp_app_connection" "name" {
  name = string (Required)
  application_endpoint = ['list', ['object', {'host': 'string', 'port': 'number'}]] (Computed)
  connectors = ['list', 'string'] (Computed)
  display_name = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  gateway = ['list', ['object', {'app_gateway': 'string', 'ingress_port': 'number', 'type': 'string', 'uri': 'string'}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Computed)
  project = string (Optional)
  region = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  type = string (Computed)
}
