resource "google_cloud_run_domain_mapping" "name" {
  location = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  status = ['list', ['object', {'conditions': ['list', ['object', {'message': 'string', 'reason': 'string', 'status': 'string', 'type': 'string'}]], 'mapped_route_name': 'string', 'observed_generation': 'number', 'resource_records': ['list', ['object', {'name': 'string', 'rrdata': 'string', 'type': 'string'}]]}]] (Computed)

  metadata block "list" (Optional) {
    namespace = string (Required)
    annotations = ['map', 'string'] (Optional)
    effective_annotations = ['map', 'string'] (Computed)
    effective_labels = ['map', 'string'] (Computed)
    generation = number (Computed)
    labels = ['map', 'string'] (Optional)
    resource_version = string (Computed)
    self_link = string (Computed)
    terraform_labels = ['map', 'string'] (Computed)
    uid = string (Computed)
  }

  spec block "list" (Required) {
    route_name = string (Required)
    certificate_mode = string (Optional)
    force_override = bool (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
