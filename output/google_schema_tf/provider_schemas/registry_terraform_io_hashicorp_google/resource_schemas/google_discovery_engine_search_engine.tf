resource "google_discovery_engine_search_engine" "name" {
  collection_id = string (Required)
  data_store_ids = ['list', 'string'] (Required)
  display_name = string (Required)
  engine_id = string (Required)
  location = string (Required)
  app_type = string (Optional)
  create_time = string (Computed)
  features = ['map', 'string'] (Optional)
  id = string (Optional, Computed)
  industry_vertical = string (Optional)
  kms_key_name = string (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  update_time = string (Computed)

  common_config block "list" (Optional) {
    company_name = string (Optional)
  }

  search_engine_config block "list" (Required) {
    search_add_ons = ['list', 'string'] (Optional)
    search_tier = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
