data "azurerm_kubernetes_service_versions" "name" {
  location = string (Required)
  default_version = string (Computed)
  id = string (Optional, Computed)
  include_preview = bool (Optional)
  latest_version = string (Computed)
  version_prefix = string (Optional)
  versions = ['list', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
