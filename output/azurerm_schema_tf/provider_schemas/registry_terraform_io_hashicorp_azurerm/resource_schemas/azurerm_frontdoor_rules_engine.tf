resource "azurerm_frontdoor_rules_engine" "name" {
  frontdoor_name = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  location = string (Computed)

  rule block "list" (Optional) {
    name = string (Required)
    priority = number (Required)

    action block "list" (Optional) {

      request_header block "list" (Optional) {
        header_action_type = string (Optional)
        header_name = string (Optional)
        value = string (Optional)
      }

      response_header block "list" (Optional) {
        header_action_type = string (Optional)
        header_name = string (Optional)
        value = string (Optional)
      }
    }

    match_condition block "list" (Optional) {
      operator = string (Required)
      negate_condition = bool (Optional)
      selector = string (Optional)
      transform = ['list', 'string'] (Optional)
      value = ['list', 'string'] (Optional)
      variable = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
