resource "google_cloudfunctions_function" "name" {
  name = string (Required)
  runtime = string (Required)
  available_memory_mb = number (Optional)
  build_environment_variables = ['map', 'string'] (Optional)
  build_service_account = string (Optional, Computed)
  build_worker_pool = string (Optional)
  description = string (Optional)
  docker_registry = string (Optional, Computed)
  docker_repository = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  entry_point = string (Optional)
  environment_variables = ['map', 'string'] (Optional)
  https_trigger_security_level = string (Optional, Computed)
  https_trigger_url = string (Optional, Computed)
  id = string (Optional, Computed)
  ingress_settings = string (Optional)
  kms_key_name = string (Optional)
  labels = ['map', 'string'] (Optional)
  max_instances = number (Optional, Computed)
  min_instances = number (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  service_account_email = string (Optional, Computed)
  source_archive_bucket = string (Optional)
  source_archive_object = string (Optional)
  status = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  timeout = number (Optional)
  trigger_http = bool (Optional)
  version_id = string (Computed)
  vpc_connector = string (Optional)
  vpc_connector_egress_settings = string (Optional, Computed)

  automatic_update_policy block "list" (Optional) {
  }

  event_trigger block "list" (Optional) {
    event_type = string (Required)
    resource = string (Required)

    failure_policy block "list" (Optional) {
      retry = bool (Required)
    }
  }

  on_deploy_update_policy block "list" (Optional) {
    runtime_version = string (Computed)
  }

  secret_environment_variables block "list" (Optional) {
    key = string (Required)
    secret = string (Required)
    version = string (Required)
    project_id = string (Optional, Computed)
  }

  secret_volumes block "list" (Optional) {
    mount_path = string (Required)
    secret = string (Required)
    project_id = string (Optional, Computed)

    versions block "list" (Optional) {
      path = string (Required)
      version = string (Required)
    }
  }

  source_repository block "list" (Optional) {
    url = string (Required)
    deployed_url = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
