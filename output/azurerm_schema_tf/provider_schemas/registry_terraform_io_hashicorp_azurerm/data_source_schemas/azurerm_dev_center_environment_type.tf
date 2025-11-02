data "azurerm_dev_center_environment_type" "name" {
  dev_center_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
