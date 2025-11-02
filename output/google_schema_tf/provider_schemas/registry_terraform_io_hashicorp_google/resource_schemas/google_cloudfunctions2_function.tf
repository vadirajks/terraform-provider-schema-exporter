resource "google_cloudfunctions2_function" "name" {
  location = string (Required)
  name = string (Required)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  environment = string (Computed)
  id = string (Optional, Computed)
  kms_key_name = string (Optional)
  labels = ['map', 'string'] (Optional)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  url = string (Computed)

  build_config block "list" (Optional) {
    build = string (Computed)
    docker_repository = string (Optional, Computed)
    entry_point = string (Optional)
    environment_variables = ['map', 'string'] (Optional, Computed)
    runtime = string (Optional)
    service_account = string (Optional, Computed)
    worker_pool = string (Optional)

    automatic_update_policy block "list" (Optional) {
    }

    on_deploy_update_policy block "list" (Optional) {
      runtime_version = string (Computed)
    }

    source block "list" (Optional) {

      repo_source block "list" (Optional) {
        branch_name = string (Optional)
        commit_sha = string (Optional)
        dir = string (Optional)
        invert_regex = bool (Optional)
        project_id = string (Optional)
        repo_name = string (Optional)
        tag_name = string (Optional)
      }

      storage_source block "list" (Optional) {
        bucket = string (Optional)
        generation = number (Optional, Computed)
        object = string (Optional)
      }
    }
  }

  event_trigger block "list" (Optional) {
    event_type = string (Required)
    pubsub_topic = string (Optional, Computed)
    retry_policy = string (Optional)
    service_account_email = string (Optional, Computed)
    trigger = string (Computed)
    trigger_region = string (Optional, Computed)

    event_filters block "set" (Optional) {
      attribute = string (Required)
      value = string (Required)
      operator = string (Optional)
    }
  }

  service_config block "list" (Optional) {
    all_traffic_on_latest_revision = bool (Optional)
    available_cpu = string (Optional, Computed)
    available_memory = string (Optional, Computed)
    binary_authorization_policy = string (Optional)
    environment_variables = ['map', 'string'] (Optional, Computed)
    gcf_uri = string (Computed)
    ingress_settings = string (Optional)
    max_instance_count = number (Optional, Computed)
    max_instance_request_concurrency = number (Optional, Computed)
    min_instance_count = number (Optional)
    service = string (Computed)
    service_account_email = string (Optional, Computed)
    timeout_seconds = number (Optional, Computed)
    uri = string (Computed)
    vpc_connector = string (Optional)
    vpc_connector_egress_settings = string (Optional)

    secret_environment_variables block "list" (Optional) {
      key = string (Required)
      project_id = string (Required)
      secret = string (Required)
      version = string (Required)
    }

    secret_volumes block "list" (Optional) {
      mount_path = string (Required)
      project_id = string (Required)
      secret = string (Required)

      versions block "list" (Optional) {
        path = string (Required)
        version = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
