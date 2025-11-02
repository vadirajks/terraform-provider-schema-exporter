resource "azurerm_lab_service_plan" "name" {
  allowed_regions = ['list', 'string'] (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  default_network_subnet_id = string (Optional)
  id = string (Optional, Computed)
  shared_gallery_id = string (Optional)
  tags = ['map', 'string'] (Optional)

  default_auto_shutdown block "list"  (Optional){
    disconnect_delay = string (Optional)
    idle_delay = string (Optional)
    no_connect_delay = string (Optional)
    shutdown_on_idle = string (Optional)
  }

  default_connection block "list"  (Optional){
    client_rdp_access = string (Optional)
    client_ssh_access = string (Optional)
    web_rdp_access = string (Optional)
    web_ssh_access = string (Optional)
  }

  support block "list"  (Optional){
    email = string (Optional)
    instructions = string (Optional)
    phone = string (Optional)
    url = string (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
