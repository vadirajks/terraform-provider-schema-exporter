resource "azurerm_palo_alto_local_rulestack_certificate" "name" {
  name = string (Required)
  rulestack_id = string (Required)
  audit_comment = string (Optional)
  description = string (Optional)
  id = string (Optional, Computed)
  key_vault_certificate_id = string (Optional)
  self_signed = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
