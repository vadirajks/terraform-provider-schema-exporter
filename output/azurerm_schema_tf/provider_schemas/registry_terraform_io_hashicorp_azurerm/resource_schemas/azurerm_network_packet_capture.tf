resource "azurerm_network_packet_capture" "name" {
  name = string (Required)
  network_watcher_name = string (Required)
  resource_group_name = string (Required)
  target_resource_id = string (Required)
  id = string (Optional, Computed)
  maximum_bytes_per_packet = number (Optional)
  maximum_bytes_per_session = number (Optional)
  maximum_capture_duration = number (Optional)

  filter block "list" (Optional) {
    protocol = string (Required)
    local_ip_address = string (Optional)
    local_port = string (Optional)
    remote_ip_address = string (Optional)
    remote_port = string (Optional)
  }

  storage_location block "list" (Required) {
    file_path = string (Optional)
    storage_account_id = string (Optional)
    storage_path = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
