resource "google_discovery_engine_sitemap" "name" {
  data_store_id = string (Required)
  location = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  sitemap_id = string (Computed)
  uri = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
