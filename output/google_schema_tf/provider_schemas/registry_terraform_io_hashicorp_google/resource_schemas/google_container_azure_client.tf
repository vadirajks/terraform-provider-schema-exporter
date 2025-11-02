resource "google_container_azure_client" "name" {
  application_id = string (Required)
  location = string (Required)
  name = string (Required)
  tenant_id = string (Required)
  certificate = string (Computed)
  create_time = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  uid = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
