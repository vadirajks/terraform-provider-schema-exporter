data "google_certificate_manager_dns_authorization" "name" {
  domain = string (Required)
  name = string (Required)
  description = string (Computed)
  dns_resource_record = ['list', ['object', {'data': 'string', 'name': 'string', 'type': 'string'}]] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Computed)
  location = string (Optional)
  project = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  type = string (Computed)
}
