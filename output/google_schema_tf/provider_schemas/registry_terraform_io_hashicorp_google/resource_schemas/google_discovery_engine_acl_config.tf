resource "google_discovery_engine_acl_config" "name" {
  location = string (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  idp_config block "list" (Optional) {
    idp_type = string (Optional)

    external_idp_config block "list" (Optional) {
      workforce_pool_name = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
