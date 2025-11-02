resource "azurerm_frontdoor_firewall_policy" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  custom_block_response_body = string (Optional)
  custom_block_response_status_code = number (Optional)
  enabled = bool (Optional)
  frontend_endpoint_ids = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  location = string (Computed)
  mode = string (Optional)
  redirect_url = string (Optional)
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

  managed_rule block "list" (Optional) {
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
