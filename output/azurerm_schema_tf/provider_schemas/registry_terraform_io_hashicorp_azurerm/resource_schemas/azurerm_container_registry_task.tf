resource "azurerm_container_registry_task" "name" {
  container_registry_id = string (Required)
  name = string (Required)
  agent_pool_name = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  is_system_task = bool (Optional)
  log_template = string (Optional)
  tags = ['map', 'string'] (Optional)
  timeout_in_seconds = number (Optional)

  agent_setting block "list" (Optional) {
    cpu = number (Required)
  }

  base_image_trigger block "list" (Optional) {
    name = string (Required)
    type = string (Required)
    enabled = bool (Optional)
    update_trigger_endpoint = string (Optional)
    update_trigger_payload_type = string (Optional)
  }

  docker_step block "list" (Optional) {
    context_access_token = string (Required)
    context_path = string (Required)
    dockerfile_path = string (Required)
    arguments = ['map', 'string'] (Optional)
    cache_enabled = bool (Optional)
    image_names = ['list', 'string'] (Optional)
    push_enabled = bool (Optional)
    secret_arguments = ['map', 'string'] (Optional)
    target = string (Optional)
  }

  encoded_step block "list" (Optional) {
    task_content = string (Required)
    context_access_token = string (Optional)
    context_path = string (Optional)
    secret_values = ['map', 'string'] (Optional)
    value_content = string (Optional)
    values = ['map', 'string'] (Optional)
  }

  file_step block "list" (Optional) {
    task_file_path = string (Required)
    context_access_token = string (Optional)
    context_path = string (Optional)
    secret_values = ['map', 'string'] (Optional)
    value_file_path = string (Optional)
    values = ['map', 'string'] (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  platform block "list" (Optional) {
    os = string (Required)
    architecture = string (Optional)
    variant = string (Optional)
  }

  registry_credential block "list" (Optional) {

    custom block "set" (Optional) {
      login_server = string (Required)
      identity = string (Optional)
      password = string (Optional)
      username = string (Optional)
    }

    source block "list" (Optional) {
      login_mode = string (Required)
    }
  }

  source_trigger block "list" (Optional) {
    events = ['list', 'string'] (Required)
    name = string (Required)
    repository_url = string (Required)
    source_type = string (Required)
    branch = string (Optional)
    enabled = bool (Optional)

    authentication block "list" (Optional) {
      token = string (Required)
      token_type = string (Required)
      expire_in_seconds = number (Optional)
      refresh_token = string (Optional)
      scope = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  timer_trigger block "list" (Optional) {
    name = string (Required)
    schedule = string (Required)
    enabled = bool (Optional)
  }
}
