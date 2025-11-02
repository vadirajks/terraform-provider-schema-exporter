resource "google_vertex_ai_cache_config" "name" {
  disable_cache = bool (Required)
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
