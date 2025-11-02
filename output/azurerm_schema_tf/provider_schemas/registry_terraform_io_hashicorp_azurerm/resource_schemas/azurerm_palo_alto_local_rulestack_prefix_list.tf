resource "azurerm_palo_alto_local_rulestack_prefix_list" "name" {
  name = string (Required)
  prefix_list = ['list', 'string'] (Required)
  rulestack_id = string (Required)
  audit_comment = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
