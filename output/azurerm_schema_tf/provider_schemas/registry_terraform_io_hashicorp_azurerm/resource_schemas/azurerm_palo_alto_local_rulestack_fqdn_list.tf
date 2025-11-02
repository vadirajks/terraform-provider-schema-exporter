resource "azurerm_palo_alto_local_rulestack_fqdn_list" "name" {
  fully_qualified_domain_names = ['list', 'string'] (Required)
  name = string (Required)
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
