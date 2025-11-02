resource "azurerm_cognitive_account_rai_blocklist" "name" {
  cognitive_account_id = string (Required)
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
