resource "azurerm_cdn_frontdoor_route" "name" {
  cdn_frontdoor_endpoint_id = string (Required)
  cdn_frontdoor_origin_group_id = string (Required)
  cdn_frontdoor_origin_ids = ['list', 'string'] (Required)
  name = string (Required)
  patterns_to_match = ['list', 'string'] (Required)
  supported_protocols = ['set', 'string'] (Required)
  cdn_frontdoor_custom_domain_ids = ['set', 'string'] (Optional)
  cdn_frontdoor_origin_path = string (Optional)
  cdn_frontdoor_rule_set_ids = ['set', 'string'] (Optional)
  enabled = bool (Optional)
  forwarding_protocol = string (Optional)
  https_redirect_enabled = bool (Optional)
  id = string (Optional, Computed)
  link_to_default_domain = bool (Optional)

  cache block "list" (Optional) {
    compression_enabled = bool (Optional)
    content_types_to_compress = ['list', 'string'] (Optional)
    query_string_caching_behavior = string (Optional)
    query_strings = ['list', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
