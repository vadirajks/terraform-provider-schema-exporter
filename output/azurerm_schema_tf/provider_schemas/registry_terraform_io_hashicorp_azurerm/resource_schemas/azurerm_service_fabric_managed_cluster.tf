resource "azurerm_service_fabric_managed_cluster" "name" {
  client_connection_port = number (Required)
  http_gateway_port = number (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  backup_service_enabled = bool (Optional)
  dns_name = string (Optional, Computed)
  dns_service_enabled = bool (Optional)
  id = string (Optional, Computed)
  password = string (Optional)
  sku = string (Optional)
  subnet_id = string (Optional)
  tags = ['map', 'string'] (Optional)
  upgrade_wave = string (Optional)
  username = string (Optional)

  authentication block "list" (Optional) {

    active_directory block "list" (Optional) {
      client_application_id = string (Required)
      cluster_application_id = string (Required)
      tenant_id = string (Required)
    }

    certificate block "list" (Optional) {
      thumbprint = string (Required)
      type = string (Required)
      common_name = string (Optional)
    }
  }

  custom_fabric_setting block "list" (Optional) {
    parameter = string (Required)
    section = string (Required)
    value = string (Required)
  }

  lb_rule block "list" (Required) {
    backend_port = number (Required)
    frontend_port = number (Required)
    probe_protocol = string (Required)
    protocol = string (Required)
    probe_request_path = string (Optional)
  }

  node_type block "list" (Optional) {
    application_port_range = string (Required)
    data_disk_size_gb = number (Required)
    ephemeral_port_range = string (Required)
    name = string (Required)
    vm_image_offer = string (Required)
    vm_image_publisher = string (Required)
    vm_image_sku = string (Required)
    vm_image_version = string (Required)
    vm_instance_count = number (Required)
    vm_size = string (Required)
    capacities = ['map', 'string'] (Optional)
    data_disk_type = string (Optional)
    id = string (Computed)
    multiple_placement_groups_enabled = bool (Optional)
    placement_properties = ['map', 'string'] (Optional)
    primary = bool (Optional)
    stateless = bool (Optional)

    vm_secrets block "list" (Optional) {
      vault_id = string (Required)

      certificates block "list" (Required) {
        store = string (Required)
        url = string (Required)
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
