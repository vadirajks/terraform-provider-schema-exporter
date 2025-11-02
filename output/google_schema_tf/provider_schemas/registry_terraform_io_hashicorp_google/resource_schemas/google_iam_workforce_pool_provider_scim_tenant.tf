resource "google_iam_workforce_pool_provider_scim_tenant" "name" {
  location = string (Required)
  provider_id = string (Required)
  scim_tenant_id = string (Required)
  workforce_pool_id = string (Required)
  base_uri = string (Computed)
  description = string (Optional)
  display_name = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  state = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
