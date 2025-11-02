resource "azurerm_route_map" "name" {
  name = string (Required)
  virtual_hub_id = string (Required)
  id = string (Optional, Computed)

  rule block "list" (Optional) {
    name = string (Required)
    next_step_if_matched = string (Optional)

    action block "list" (Optional) {
      type = string (Required)

      parameter block "list" (Optional) {
        as_path = ['list', 'string'] (Optional)
        community = ['list', 'string'] (Optional)
        route_prefix = ['list', 'string'] (Optional)
      }
    }

    match_criterion block "list" (Optional) {
      match_condition = string (Required)
      as_path = ['list', 'string'] (Optional)
      community = ['list', 'string'] (Optional)
      route_prefix = ['list', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
