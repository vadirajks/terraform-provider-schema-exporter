resource "azurerm_container_group" "name" {
  location = string (Required)
  name = string (Required)
  os_type = string (Required)
  resource_group_name = string (Required)
  dns_name_label = string (Optional)
  dns_name_label_reuse_policy = string (Optional)
  exposed_port = ['set', ['object', {'port': 'number', 'protocol': 'string'}]] (Optional, Computed)
  fqdn = string (Computed)
  id = string (Optional, Computed)
  ip_address = string (Computed)
  ip_address_type = string (Optional)
  key_vault_key_id = string (Optional)
  key_vault_user_assigned_identity_id = string (Optional)
  network_profile_id = string (Optional, Computed)
  priority = string (Optional)
  restart_policy = string (Optional)
  sku = string (Optional)
  subnet_ids = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  zones = ['set', 'string'] (Optional)

  container block "list" (Required) {
    cpu = number (Required)
    image = string (Required)
    memory = number (Required)
    name = string (Required)
    commands = ['list', 'string'] (Optional, Computed)
    cpu_limit = number (Optional)
    environment_variables = ['map', 'string'] (Optional)
    memory_limit = number (Optional)
    secure_environment_variables = ['map', 'string'] (Optional)

    liveness_probe block "list" (Optional) {
      exec = ['list', 'string'] (Optional)
      failure_threshold = number (Optional)
      initial_delay_seconds = number (Optional)
      period_seconds = number (Optional)
      success_threshold = number (Optional)
      timeout_seconds = number (Optional)

      http_get block "list" (Optional) {
        http_headers = ['map', 'string'] (Optional)
        path = string (Optional)
        port = number (Optional)
        scheme = string (Optional)
      }
    }

    ports block "set" (Optional) {
      port = number (Optional)
      protocol = string (Optional)
    }

    readiness_probe block "list" (Optional) {
      exec = ['list', 'string'] (Optional)
      failure_threshold = number (Optional)
      initial_delay_seconds = number (Optional)
      period_seconds = number (Optional)
      success_threshold = number (Optional)
      timeout_seconds = number (Optional)

      http_get block "list" (Optional) {
        http_headers = ['map', 'string'] (Optional)
        path = string (Optional)
        port = number (Optional)
        scheme = string (Optional)
      }
    }

    security block "list" (Optional) {
      privilege_enabled = bool (Required)
    }

    volume block "list" (Optional) {
      mount_path = string (Required)
      name = string (Required)
      empty_dir = bool (Optional)
      read_only = bool (Optional)
      secret = ['map', 'string'] (Optional)
      share_name = string (Optional)
      storage_account_key = string (Optional)
      storage_account_name = string (Optional)

      git_repo block "list" (Optional) {
        url = string (Required)
        directory = string (Optional)
        revision = string (Optional)
      }
    }
  }

  diagnostics block "list" (Optional) {

    log_analytics block "list" (Required) {
      workspace_id = string (Required)
      workspace_key = string (Required)
      log_type = string (Optional)
      metadata = ['map', 'string'] (Optional)
    }
  }

  dns_config block "list" (Optional) {
    nameservers = ['list', 'string'] (Required)
    options = ['set', 'string'] (Optional)
    search_domains = ['set', 'string'] (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  image_registry_credential block "list" (Optional) {
    server = string (Required)
    password = string (Optional)
    user_assigned_identity_id = string (Optional)
    username = string (Optional)
  }

  init_container block "list" (Optional) {
    image = string (Required)
    name = string (Required)
    commands = ['list', 'string'] (Optional, Computed)
    environment_variables = ['map', 'string'] (Optional)
    secure_environment_variables = ['map', 'string'] (Optional)

    security block "list" (Optional) {
      privilege_enabled = bool (Required)
    }

    volume block "list" (Optional) {
      mount_path = string (Required)
      name = string (Required)
      empty_dir = bool (Optional)
      read_only = bool (Optional)
      secret = ['map', 'string'] (Optional)
      share_name = string (Optional)
      storage_account_key = string (Optional)
      storage_account_name = string (Optional)

      git_repo block "list" (Optional) {
        url = string (Required)
        directory = string (Optional)
        revision = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
