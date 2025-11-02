resource "azurerm_cdn_frontdoor_firewall_policy" "name" {
  mode = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  captcha_cookie_expiration_in_minutes = number (Optional, Computed)
  custom_block_response_body = string (Optional)
  custom_block_response_status_code = number (Optional)
  enabled = bool (Optional)
  frontend_endpoint_ids = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  js_challenge_cookie_expiration_in_minutes = number (Optional, Computed)
  redirect_url = string (Optional)
  request_body_check_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  custom_rule block "list" (Optional) {
    action = string (Required)
    name = string (Required)
    type = string (Required)
    enabled = bool (Optional)
    priority = number (Optional)
    rate_limit_duration_in_minutes = number (Optional)
    rate_limit_threshold = number (Optional)

    match_condition block "list" (Optional) {
      match_values = ['list', 'string'] (Required)
      match_variable = string (Required)
      operator = string (Required)
      negation_condition = bool (Optional)
      selector = string (Optional)
      transforms = ['list', 'string'] (Optional)
    }
  }

  log_scrubbing block "list" (Optional) {
    enabled = bool (Optional)

    scrubbing_rule block "list" (Required) {
      match_variable = string (Required)
      enabled = bool (Optional)
      operator = string (Optional)
      selector = string (Optional)
    }
  }

  managed_rule block "list" (Optional) {
    action = string (Required)
    type = string (Required)
    version = string (Required)

    exclusion block "list" (Optional) {
      match_variable = string (Required)
      operator = string (Required)
      selector = string (Required)
    }

    override block "list" (Optional) {
      rule_group_name = string (Required)

      exclusion block "list" (Optional) {
        match_variable = string (Required)
        operator = string (Required)
        selector = string (Required)
      }

      rule block "list" (Optional) {
        action = string (Required)
        rule_id = string (Required)
        enabled = bool (Optional)

        exclusion block "list" (Optional) {
          match_variable = string (Required)
          operator = string (Required)
          selector = string (Required)
        }
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
