resource "google_vertex_ai_index" "name" {
  display_name = string (Required)
  create_time = string (Computed)
  deployed_indexes = ['list', ['object', {'deployed_index_id': 'string', 'index_endpoint': 'string'}]] (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  index_stats = ['list', ['object', {'shards_count': 'number', 'vectors_count': 'string'}]] (Computed)
  index_update_method = string (Optional)
  labels = ['map', 'string'] (Optional)
  metadata_schema_uri = string (Computed)
  name = string (Computed)
  project = string (Optional, Computed)
  region = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  encryption_spec block "list" (Optional) {
    kms_key_name = string (Required)
  }

  metadata block "list" (Required) {
    contents_delta_uri = string (Optional)
    is_complete_overwrite = bool (Optional)

    config block "list" (Required) {
      dimensions = number (Required)
      approximate_neighbors_count = number (Optional)
      distance_measure_type = string (Optional)
      feature_norm_type = string (Optional)
      shard_size = string (Optional, Computed)

      algorithm_config block "list" (Optional) {

        brute_force_config block "list" (Optional) {
        }

        tree_ah_config block "list" (Optional) {
          leaf_node_embedding_count = number (Optional)
          leaf_nodes_to_search_percent = number (Optional)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
