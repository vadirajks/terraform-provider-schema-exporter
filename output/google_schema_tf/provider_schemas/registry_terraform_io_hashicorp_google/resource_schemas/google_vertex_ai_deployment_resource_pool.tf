resource "google_vertex_ai_deployment_resource_pool" "name" {
  name = string (Required)
  create_time = string (Computed)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional)

  dedicated_resources block "list" (Optional) {
    min_replica_count = number (Required)
    max_replica_count = number (Optional)

    autoscaling_metric_specs block "list" (Optional) {
      metric_name = string (Required)
      target = number (Optional)
    }

    machine_spec block "list" (Required) {
      accelerator_count = number (Optional)
      accelerator_type = string (Optional)
      machine_type = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
