resource "azurerm_cdn_frontdoor_profile" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  id = string (Optional, Computed)
  resource_guid = string (Computed)
  response_timeout_seconds = number (Optional)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  log_scrubbing_rule block "set" (Optional) {
    match_variable = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
