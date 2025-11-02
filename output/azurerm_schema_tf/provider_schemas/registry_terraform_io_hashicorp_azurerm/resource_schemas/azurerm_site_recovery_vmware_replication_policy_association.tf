resource "azurerm_site_recovery_vmware_replication_policy_association" "name" {
  name = string (Required)
  policy_id = string (Required)
  recovery_vault_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
