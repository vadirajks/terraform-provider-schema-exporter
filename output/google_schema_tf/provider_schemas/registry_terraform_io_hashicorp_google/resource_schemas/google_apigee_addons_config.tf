resource "google_apigee_addons_config" "name" {
  org = string (Required)
  id = string (Optional, Computed)

  addons_config block "list" (Optional) {

    advanced_api_ops_config block "list" (Optional) {
      enabled = bool (Optional)
    }

    api_security_config block "list" (Optional) {
      enabled = bool (Optional)
      expires_at = string (Computed)
    }

    connectors_platform_config block "list" (Optional) {
      enabled = bool (Optional)
      expires_at = string (Computed)
    }

    integration_config block "list" (Optional) {
      enabled = bool (Optional)
    }

    monetization_config block "list" (Optional) {
      enabled = bool (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
