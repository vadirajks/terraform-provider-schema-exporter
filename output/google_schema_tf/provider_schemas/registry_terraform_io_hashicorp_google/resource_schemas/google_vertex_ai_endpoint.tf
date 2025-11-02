resource "google_vertex_ai_endpoint" "name" {
  display_name = string (Required)
  location = string (Required)
  name = string (Required)
  create_time = string (Computed)
  dedicated_endpoint_dns = string (Computed)
  dedicated_endpoint_enabled = bool (Optional)
  deployed_models = ['list', ['object', {'automatic_resources': ['list', ['object', {'max_replica_count': 'number', 'min_replica_count': 'number'}]], 'create_time': 'string', 'dedicated_resources': ['list', ['object', {'autoscaling_metric_specs': ['list', ['object', {'metric_name': 'string', 'target': 'number'}]], 'machine_spec': ['list', ['object', {'accelerator_count': 'number', 'accelerator_type': 'string', 'machine_type': 'string'}]], 'max_replica_count': 'number', 'min_replica_count': 'number'}]], 'display_name': 'string', 'enable_access_logging': 'bool', 'enable_container_logging': 'bool', 'id': 'string', 'model': 'string', 'model_version_id': 'string', 'private_endpoints': ['list', ['object', {'explain_http_uri': 'string', 'health_http_uri': 'string', 'predict_http_uri': 'string', 'service_attachment': 'string'}]], 'service_account': 'string', 'shared_resources': 'string'}]] (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  model_deployment_monitoring_job = string (Computed)
  network = string (Optional)
  project = string (Optional, Computed)
  region = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  traffic_split = string (Optional, Computed)
  update_time = string (Computed)

  encryption_spec block "list" (Optional) {
    kms_key_name = string (Required)
  }

  predict_request_response_logging_config block "list" (Optional) {
    enabled = bool (Optional)
    sampling_rate = number (Optional)

    bigquery_destination block "list" (Optional) {
      output_uri = string (Optional)
    }
  }

  private_service_connect_config block "list" (Optional) {
    enable_private_service_connect = bool (Required)
    project_allowlist = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
