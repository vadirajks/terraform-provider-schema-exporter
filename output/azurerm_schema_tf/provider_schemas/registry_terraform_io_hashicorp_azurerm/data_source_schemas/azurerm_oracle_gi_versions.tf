data "azurerm_oracle_gi_versions" "name" {
  location = string (Required)
  id = string (Optional, Computed)
  shape = string (Optional)
  versions = ['list', 'string'] (Computed)
  zone = string (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
