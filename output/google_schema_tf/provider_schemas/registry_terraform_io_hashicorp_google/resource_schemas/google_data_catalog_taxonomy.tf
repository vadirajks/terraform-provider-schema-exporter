resource "google_data_catalog_taxonomy" "name" {
  display_name = string (Required)
  activated_policy_types = ['list', 'string'] (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
