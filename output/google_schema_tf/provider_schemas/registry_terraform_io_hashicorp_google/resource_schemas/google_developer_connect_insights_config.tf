resource "google_developer_connect_insights_config" "name" {
  app_hub_application = string (Required)
  insights_config_id = string (Required)
  location = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  errors = ['list', ['object', {'code': 'number', 'details': ['list', ['object', {'detail_message': 'string'}]], 'message': 'string'}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  reconciling = bool (Computed)
  runtime_configs = ['list', ['object', {'app_hub_workload': ['list', ['object', {'criticality': 'string', 'environment': 'string', 'workload': 'string'}]], 'gke_workload': ['list', ['object', {'cluster': 'string', 'deployment': 'string'}]], 'state': 'string', 'uri': 'string'}]] (Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  artifact_configs block "list" (Optional) {
    uri = string (Optional)

    google_artifact_analysis block "list" (Optional) {
      project_id = string (Required)
    }

    google_artifact_registry block "list" (Optional) {
      artifact_registry_package = string (Required)
      project_id = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
