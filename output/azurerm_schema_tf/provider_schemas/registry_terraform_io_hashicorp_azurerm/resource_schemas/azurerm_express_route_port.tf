resource "azurerm_express_route_port" "name" {
  bandwidth_in_gbps = number (Required)
  encapsulation = string (Required)
  location = string (Required)
  name = string (Required)
  peering_location = string (Required)
  resource_group_name = string (Required)
  billing_type = string (Optional)
  ethertype = string (Computed)
  guid = string (Computed)
  id = string (Optional, Computed)
  mtu = string (Computed)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  link1 block "list" (Optional) {
    admin_enabled = bool (Optional)
    connector_type = string (Computed)
    id = string (Computed)
    interface_name = string (Computed)
    macsec_cak_keyvault_secret_id = string (Optional)
    macsec_cipher = string (Optional)
    macsec_ckn_keyvault_secret_id = string (Optional)
    macsec_sci_enabled = bool (Optional)
    patch_panel_id = string (Computed)
    rack_id = string (Computed)
    router_name = string (Computed)
  }

  link2 block "list" (Optional) {
    admin_enabled = bool (Optional)
    connector_type = string (Computed)
    id = string (Computed)
    interface_name = string (Computed)
    macsec_cak_keyvault_secret_id = string (Optional)
    macsec_cipher = string (Optional)
    macsec_ckn_keyvault_secret_id = string (Optional)
    macsec_sci_enabled = bool (Optional)
    patch_panel_id = string (Computed)
    rack_id = string (Computed)
    router_name = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
