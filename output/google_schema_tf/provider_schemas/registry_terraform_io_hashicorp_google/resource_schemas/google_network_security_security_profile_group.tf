resource "google_network_security_security_profile_group" "name" {
  name = string (Required)
  create_time = string (Computed)
  custom_intercept_profile = string (Optional)
  custom_mirroring_profile = string (Optional)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  parent = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  threat_prevention_profile = string (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
