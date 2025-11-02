resource "azurerm_lab_service_lab" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  title = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  lab_plan_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  auto_shutdown block "list"  (Optional){
    disconnect_delay = string (Optional)
    idle_delay = string (Optional)
    no_connect_delay = string (Optional)
    shutdown_on_idle = string (Optional)
  }

  connection_setting block "list"  (Required){
    client_rdp_access = string (Optional)
    client_ssh_access = string (Optional)
  }

  network block "list"  (Optional){
    load_balancer_id = string (Computed)
    public_ip_id = string (Computed)
    subnet_id = string (Optional)
  }

  roster block "list"  (Optional){
    active_directory_group_id = string (Optional)
    lms_instance = string (Optional)
    lti_client_id = string (Optional)
    lti_context_id = string (Optional)
    lti_roster_endpoint = string (Optional)
  }

  security block "list"  (Required){
    open_access_enabled = bool (Required)
    registration_code = string (Computed)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  virtual_machine block "list"  (Required){
    additional_capability_gpu_drivers_installed = bool (Optional)
    create_option = string (Optional)
    shared_password_enabled = bool (Optional)
    usage_quota = string (Optional)

    admin_user block "list"  (Required){
      password = string (Required)
      username = string (Required)
    }

    image_reference block "list"  (Required){
      id = string (Optional)
      offer = string (Optional)
      publisher = string (Optional)
      sku = string (Optional)
      version = string (Optional)
    }

    non_admin_user block "list"  (Optional){
      password = string (Required)
      username = string (Required)
    }

    sku block "list"  (Required){
      capacity = number (Required)
      name = string (Required)
    }
  }
}
