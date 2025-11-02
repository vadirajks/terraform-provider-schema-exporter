resource "azurerm_palo_alto_local_rulestack_outbound_untrust_certificate_association" "name" {
  certificate_id = string (Required)
  id = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
