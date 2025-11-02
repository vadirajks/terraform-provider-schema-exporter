resource "google_integrations_client" "name" {
  location = string (Required)
  create_sample_integrations = bool (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  run_as_service_account = string (Optional)

  cloud_kms_config block "list" (Optional) {
    key = string (Required)
    kms_location = string (Required)
    kms_ring = string (Required)
    key_version = string (Optional)
    kms_project_id = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
