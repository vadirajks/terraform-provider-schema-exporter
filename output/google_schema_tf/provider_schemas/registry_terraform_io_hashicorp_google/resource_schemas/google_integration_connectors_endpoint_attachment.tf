resource "google_integration_connectors_endpoint_attachment" "name" {
  location = string (Required)
  name = string (Required)
  service_attachment = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  endpoint_global_access = bool (Optional)
  endpoint_ip = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
