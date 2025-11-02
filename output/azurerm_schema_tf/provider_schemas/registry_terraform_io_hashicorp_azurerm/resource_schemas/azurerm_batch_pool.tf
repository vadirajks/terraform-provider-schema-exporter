resource "azurerm_batch_pool" "name" {
  account_name = string (Required)
  name = string (Required)
  node_agent_sku_id = string (Required)
  resource_group_name = string (Required)
  vm_size = string (Required)
  display_name = string (Optional)
  id = string (Optional, Computed)
  inter_node_communication = string (Optional)
  license_type = string (Optional)
  max_tasks_per_node = number (Optional)
  metadata = ['map', 'string'] (Optional)
  os_disk_placement = string (Optional)
  stop_pending_resize_operation = bool (Optional)
  target_node_communication_mode = string (Optional)

  auto_scale block "list" (Optional) {
    formula = string (Required)
    evaluation_interval = string (Optional)
  }

  certificate block "list" (Optional) {
    id = string (Required)
    store_location = string (Required)
    store_name = string (Optional)
    visibility = ['set', 'string'] (Optional)
  }

  container_configuration block "list" (Optional) {
    container_image_names = ['set', 'string'] (Optional)
    container_registries = ['list', ['object', {'password': 'string', 'registry_server': 'string', 'user_assigned_identity_id': 'string', 'user_name': 'string'}]] (Optional)
    type = string (Optional)
  }

  data_disks block "list" (Optional) {
    disk_size_gb = number (Required)
    lun = number (Required)
    caching = string (Optional)
    storage_account_type = string (Optional)
  }

  disk_encryption block "list" (Optional) {
    disk_encryption_target = string (Required)
  }

  extensions block "list" (Optional) {
    name = string (Required)
    publisher = string (Required)
    type = string (Required)
    auto_upgrade_minor_version = bool (Optional)
    automatic_upgrade_enabled = bool (Optional)
    protected_settings = string (Optional)
    provision_after_extensions = ['set', 'string'] (Optional)
    settings_json = string (Optional)
    type_handler_version = string (Optional)
  }

  fixed_scale block "list" (Optional) {
    node_deallocation_method = string (Optional)
    resize_timeout = string (Optional)
    target_dedicated_nodes = number (Optional)
    target_low_priority_nodes = number (Optional)
  }

  identity block "list" (Optional) {
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  mount block "list" (Optional) {

    azure_blob_file_system block "list" (Optional) {
      account_name = string (Required)
      container_name = string (Required)
      relative_mount_path = string (Required)
      account_key = string (Optional)
      blobfuse_options = string (Optional)
      identity_id = string (Optional)
      sas_key = string (Optional)
    }

    azure_file_share block "list" (Optional) {
      account_key = string (Required)
      account_name = string (Required)
      azure_file_url = string (Required)
      relative_mount_path = string (Required)
      mount_options = string (Optional)
    }

    cifs_mount block "list" (Optional) {
      password = string (Required)
      relative_mount_path = string (Required)
      source = string (Required)
      user_name = string (Required)
      mount_options = string (Optional)
    }

    nfs_mount block "list" (Optional) {
      relative_mount_path = string (Required)
      source = string (Required)
      mount_options = string (Optional)
    }
  }

  network_configuration block "list" (Optional) {
    accelerated_networking_enabled = bool (Optional)
    dynamic_vnet_assignment_scope = string (Optional)
    public_address_provisioning_type = string (Optional)
    public_ips = ['set', 'string'] (Optional)
    subnet_id = string (Optional)

    endpoint_configuration block "list" (Optional) {
      backend_port = number (Required)
      frontend_port_range = string (Required)
      name = string (Required)
      protocol = string (Required)

      network_security_group_rules block "list" (Optional) {
        access = string (Required)
        priority = number (Required)
        source_address_prefix = string (Required)
        source_port_ranges = ['list', 'string'] (Optional, Computed)
      }
    }
  }

  node_placement block "list" (Optional) {
    policy = string (Optional)
  }

  security_profile block "list" (Optional) {
    host_encryption_enabled = bool (Optional)
    secure_boot_enabled = bool (Optional)
    security_type = string (Optional)
    vtpm_enabled = bool (Optional)
  }

  start_task block "list" (Optional) {
    command_line = string (Required)
    common_environment_properties = ['map', 'string'] (Optional)
    task_retry_maximum = number (Optional)
    wait_for_success = bool (Optional)

    container block "list" (Optional) {
      image_name = string (Required)
      run_options = string (Optional)
      working_directory = string (Optional)

      registry block "list" (Optional) {
        registry_server = string (Required)
        password = string (Optional)
        user_assigned_identity_id = string (Optional)
        user_name = string (Optional)
      }
    }

    resource_file block "list" (Optional) {
      auto_storage_container_name = string (Optional)
      blob_prefix = string (Optional)
      file_mode = string (Optional)
      file_path = string (Optional)
      http_url = string (Optional)
      storage_container_url = string (Optional)
      user_assigned_identity_id = string (Optional)
    }

    user_identity block "list" (Required) {
      user_name = string (Optional)

      auto_user block "list" (Optional) {
        elevation_level = string (Optional)
        scope = string (Optional)
      }
    }
  }

  storage_image_reference block "list" (Required) {
    id = string (Optional)
    offer = string (Optional)
    publisher = string (Optional)
    sku = string (Optional)
    version = string (Optional)
  }

  task_scheduling_policy block "list" (Optional) {
    node_fill_type = string (Optional, Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  user_accounts block "list" (Optional) {
    elevation_level = string (Required)
    name = string (Required)
    password = string (Required)

    linux_user_configuration block "list" (Optional) {
      gid = number (Optional)
      ssh_private_key = string (Optional)
      uid = number (Optional)
    }

    windows_user_configuration block "list" (Optional) {
      login_mode = string (Required)
    }
  }

  windows block "list" (Optional) {
    enable_automatic_updates = bool (Optional)
  }
}
