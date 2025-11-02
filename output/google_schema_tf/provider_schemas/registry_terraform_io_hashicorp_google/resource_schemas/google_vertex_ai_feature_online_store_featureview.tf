resource "google_vertex_ai_feature_online_store_featureview" "name" {
  feature_online_store = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  big_query_source block "list" (Optional) {
    entity_id_columns = ['list', 'string'] (Required)
    uri = string (Required)
  }

  feature_registry_source block "list" (Optional) {
    project_number = string (Optional)

    feature_groups block "list" (Required) {
      feature_group_id = string (Required)
      feature_ids = ['list', 'string'] (Required)
    }
  }

  sync_config block "list" (Optional) {
    cron = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
