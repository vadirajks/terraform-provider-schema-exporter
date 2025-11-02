resource "google_vertex_ai_rag_engine_config" "name" {
  id = string (Optional, Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)

  rag_managed_db_config block "list" (Required) {

    basic block "list" (Optional) {
    }

    scaled block "list" (Optional) {
    }

    unprovisioned block "list" (Optional) {
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
