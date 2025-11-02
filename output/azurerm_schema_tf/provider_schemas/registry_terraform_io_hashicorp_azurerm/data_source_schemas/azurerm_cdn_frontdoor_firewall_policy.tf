data "azurerm_cdn_frontdoor_firewall_policy" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  captcha_cookie_expiration_in_minutes = number (Computed)
  enabled = bool (Computed)
  frontend_endpoint_ids = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  js_challenge_cookie_expiration_in_minutes = number (Computed)
  mode = string (Computed)
  redirect_url = string (Computed)
  sku_name = string (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
