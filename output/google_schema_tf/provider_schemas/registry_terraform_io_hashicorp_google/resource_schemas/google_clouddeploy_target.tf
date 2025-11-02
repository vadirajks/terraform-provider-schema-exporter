resource "google_clouddeploy_target" "name" {
  location = string (Required)
  name = string (Required)
  annotations = ['map', 'string'] (Optional)
  create_time = string (Computed)
  deploy_parameters = ['map', 'string'] (Optional)
  description = string (Optional)
  effective_annotations = ['map', 'string'] (Computed)
  effective_labels = ['map', 'string'] (Computed)
  etag = string (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  require_approval = bool (Optional)
  target_id = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  anthos_cluster block "list" (Optional) {
    membership = string (Optional)
  }

  associated_entities block "set" (Optional) {
    entity_id = string (Required)

    anthos_clusters block "list" (Optional) {
      membership = string (Optional)
    }

    gke_clusters block "list" (Optional) {
      cluster = string (Optional)
      internal_ip = bool (Optional)
      proxy_url = string (Optional)
    }
  }

  custom_target block "list" (Optional) {
    custom_target_type = string (Required)
  }

  execution_configs block "list" (Optional) {
    usages = ['list', 'string'] (Required)
    artifact_storage = string (Optional, Computed)
    execution_timeout = string (Optional, Computed)
    service_account = string (Optional, Computed)
    verbose = bool (Optional)
    worker_pool = string (Optional)
  }

  gke block "list" (Optional) {
    cluster = string (Optional)
    dns_endpoint = bool (Optional)
    internal_ip = bool (Optional)
    proxy_url = string (Optional)
  }

  multi_target block "list" (Optional) {
    target_ids = ['list', 'string'] (Required)
  }

  run block "list" (Optional) {
    location = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
