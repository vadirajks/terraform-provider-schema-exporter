resource "google_access_context_manager_egress_policy" "name" {
  egress_policy_name = string (Required)
  resource = string (Required)
  access_policy_id = string (Computed)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
