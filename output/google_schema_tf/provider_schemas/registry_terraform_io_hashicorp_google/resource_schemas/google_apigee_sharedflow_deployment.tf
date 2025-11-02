resource "google_apigee_sharedflow_deployment" "name" {
  environment = string (Required)
  org_id = string (Required)
  revision = string (Required)
  sharedflow_id = string (Required)
  id = string (Optional, Computed)
  service_account = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
