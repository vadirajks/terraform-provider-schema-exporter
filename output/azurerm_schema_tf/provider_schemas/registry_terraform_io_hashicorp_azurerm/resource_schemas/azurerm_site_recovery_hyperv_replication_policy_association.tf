resource "azurerm_site_recovery_hyperv_replication_policy_association" "name" {
  hyperv_site_id = string (Required)
  name = string (Required)
  policy_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
