resource "azurerm_virtual_machine_packet_capture" "name" {
  name = string (Required)
  network_watcher_id = string (Required)
  virtual_machine_id = string (Required)
  id = string (Optional, Computed)
  maximum_bytes_per_packet = number (Optional)
  maximum_bytes_per_session = number (Optional)
  maximum_capture_duration_in_seconds = number (Optional)

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
