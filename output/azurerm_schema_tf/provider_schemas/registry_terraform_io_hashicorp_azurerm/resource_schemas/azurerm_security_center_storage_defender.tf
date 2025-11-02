resource "azurerm_security_center_storage_defender" "name" {
  storage_account_id = string (Required)
  id = string (Optional, Computed)
  malware_scanning_on_upload_cap_gb_per_month = number (Optional)
  malware_scanning_on_upload_enabled = bool (Optional)
  override_subscription_settings_enabled = bool (Optional)
  scan_results_event_grid_topic_id = string (Optional)
  sensitive_data_discovery_enabled = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
