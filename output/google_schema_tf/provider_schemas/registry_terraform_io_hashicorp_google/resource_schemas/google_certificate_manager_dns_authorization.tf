resource "google_certificate_manager_dns_authorization" "name" {
  domain = string (Required)
  name = string (Required)
  description = string (Optional)
  dns_resource_record = ['list', ['object', {'data': 'string', 'name': 'string', 'type': 'string'}]] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  type = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
