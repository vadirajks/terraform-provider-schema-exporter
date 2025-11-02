resource "azurerm_web_application_firewall_policy" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  http_listener_ids = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  path_based_rule_ids = ['list', 'string'] (Computed)
  tags = ['map', 'string'] (Optional)

  custom_rules block "list" (Optional) {
    action = string (Required)
    priority = number (Required)
    rule_type = string (Required)
    enabled = bool (Optional)
    group_rate_limit_by = string (Optional)
    name = string (Optional)
    rate_limit_duration = string (Optional)
    rate_limit_threshold = number (Optional)

    match_conditions block "list" (Required) {
      operator = string (Required)
      match_values = ['list', 'string'] (Optional)
      negation_condition = bool (Optional)
      transforms = ['set', 'string'] (Optional)

      match_variables block "list" (Required) {
        variable_name = string (Required)
        selector = string (Optional)
      }
    }
  }

  managed_rules block "list" (Required) {

    exclusion block "list" (Optional) {
      match_variable = string (Required)
      selector = string (Required)
      selector_match_operator = string (Required)

      excluded_rule_set block "list" (Optional) {
        type = string (Optional)
        version = string (Optional)

        rule_group block "list" (Optional) {
          rule_group_name = string (Required)
          excluded_rules = ['list', 'string'] (Optional)
        }
      }
    }

    managed_rule_set block "list" (Required) {
      version = string (Required)
      type = string (Optional)

      rule_group_override block "list" (Optional) {
        rule_group_name = string (Required)

        rule block "list" (Optional) {
          id = string (Required)
          action = string (Optional)
          enabled = bool (Optional)
        }
      }
    }
  }

  policy_settings block "list" (Optional) {
    enabled = bool (Optional)
    file_upload_enforcement = bool (Optional, Computed)
    file_upload_limit_in_mb = number (Optional)
    js_challenge_cookie_expiration_in_minutes = number (Optional)
    max_request_body_size_in_kb = number (Optional)
    mode = string (Optional)
    request_body_check = bool (Optional)
    request_body_enforcement = bool (Optional)
    request_body_inspect_limit_in_kb = number (Optional)

    log_scrubbing block "list" (Optional) {
      enabled = bool (Optional)

      rule block "list" (Optional) {
        match_variable = string (Required)
        enabled = bool (Optional)
        selector = string (Optional)
        selector_match_operator = string (Optional)
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
