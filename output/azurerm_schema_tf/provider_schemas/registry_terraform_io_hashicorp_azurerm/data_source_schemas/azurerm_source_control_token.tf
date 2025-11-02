data "azurerm_source_control_token" "name" {
  type = string (Required)
  id = string (Optional, Computed)
  token = string (Computed)
  token_secret = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
