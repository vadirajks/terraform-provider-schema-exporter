resource "azurerm_portal_tenant_configuration" "name" {
  private_markdown_storage_enforced = bool (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
