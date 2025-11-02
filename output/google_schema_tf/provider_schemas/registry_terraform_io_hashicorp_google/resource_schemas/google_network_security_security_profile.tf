resource "google_network_security_security_profile" "name" {
  name = string (Required)
  type = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  location = string (Optional)
  parent = string (Optional)
  self_link = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  custom_intercept_profile block "list" (Optional) {
    intercept_endpoint_group = string (Required)
  }

  custom_mirroring_profile block "list" (Optional) {
    mirroring_endpoint_group = string (Required)
  }

  threat_prevention_profile block "list" (Optional) {

    antivirus_overrides block "set" (Optional) {
      action = string (Required)
      protocol = string (Required)
    }

    severity_overrides block "set" (Optional) {
      action = string (Required)
      severity = string (Required)
    }

    threat_overrides block "set" (Optional) {
      action = string (Required)
      threat_id = string (Required)
      type = string (Computed)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
