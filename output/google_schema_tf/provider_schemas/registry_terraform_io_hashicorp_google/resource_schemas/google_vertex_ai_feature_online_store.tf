resource "google_vertex_ai_feature_online_store" "name" {
  name = string (Required)
  create_time = string (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  force_destroy = bool (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  bigtable block "list" (Optional) {

    auto_scaling block "list" (Required) {
      max_node_count = number (Required)
      min_node_count = number (Required)
      cpu_utilization_target = number (Optional, Computed)
    }
  }

  dedicated_serving_endpoint block "list" (Optional) {
    public_endpoint_domain_name = string (Computed)
    service_attachment = string (Computed)

    private_service_connect_config block "list" (Optional) {
      enable_private_service_connect = bool (Required)
      project_allowlist = ['list', 'string'] (Optional)
    }
  }

  optimized block "list" (Optional) {
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
