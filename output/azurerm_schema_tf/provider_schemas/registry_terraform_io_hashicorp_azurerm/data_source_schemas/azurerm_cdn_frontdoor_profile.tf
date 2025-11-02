data "azurerm_cdn_frontdoor_profile" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  log_scrubbing_rule = ['set', ['object', {'match_variable': 'string'}]] (Computed)
  resource_guid = string (Computed)
  response_timeout_seconds = number (Computed)
  sku_name = string (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
