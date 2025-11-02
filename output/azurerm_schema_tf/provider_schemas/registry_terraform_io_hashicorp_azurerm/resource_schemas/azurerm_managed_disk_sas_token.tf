resource "azurerm_managed_disk_sas_token" "name" {
  access_level = string (Required)
  duration_in_seconds = number (Required)
  managed_disk_id = string (Required)
  id = string (Optional, Computed)
  sas_url = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
