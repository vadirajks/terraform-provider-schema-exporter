data "azurerm_function_app_host_keys" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  blobs_extension_key = string (Computed)
  default_function_key = string (Computed)
  durabletask_extension_key = string (Computed)
  event_grid_extension_config_key = string (Computed)
  event_grid_extension_key = string (Computed)
  id = string (Optional, Computed)
  primary_key = string (Computed)
  signalr_extension_key = string (Computed)
  webpubsub_extension_key = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
