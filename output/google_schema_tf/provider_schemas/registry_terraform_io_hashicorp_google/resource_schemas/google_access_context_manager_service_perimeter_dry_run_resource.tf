resource "google_access_context_manager_service_perimeter_dry_run_resource" "name" {
  perimeter_name = string (Required)
  resource = string (Required)
  access_policy_id = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
