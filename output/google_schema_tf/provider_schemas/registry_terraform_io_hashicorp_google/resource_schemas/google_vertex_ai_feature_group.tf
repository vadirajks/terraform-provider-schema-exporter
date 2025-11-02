resource "google_vertex_ai_feature_group" "name" {
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  big_query block "list" (Optional) {
    entity_id_columns = ['list', 'string'] (Optional)

    big_query_source block "list" (Required) {
      input_uri = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
