resource "google_access_context_manager_service_perimeter_ingress_policy" "name" {
  perimeter = string (Required)
  access_policy_id = string (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  title = string (Optional)

  ingress_from block "list" (Optional) {
    identities = ['list', 'string'] (Optional)
    identity_type = string (Optional)

    sources block "list" (Optional) {
      access_level = string (Optional)
      resource = string (Optional)
    }
  }

  ingress_to block "list" (Optional) {
    resources = ['list', 'string'] (Optional)
    roles = ['list', 'string'] (Optional)

    operations block "list" (Optional) {
      service_name = string (Optional)

      method_selectors block "list" (Optional) {
        method = string (Optional)
        permission = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
