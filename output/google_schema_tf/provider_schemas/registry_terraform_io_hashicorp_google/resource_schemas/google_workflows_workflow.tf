resource "google_workflows_workflow" "name" {
  call_log_level = string (Optional)
  create_time = string (Computed)
  crypto_key_name = string (Optional)
  deletion_protection = bool (Optional)
  description = string (Optional, Computed)
  effective_labels = ['map', 'string'] (Computed)
  execution_history_level = string (Optional)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional)
  revision_id = string (Computed)
  service_account = string (Optional, Computed)
  source_contents = string (Optional)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  user_env_vars = ['map', 'string'] (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
