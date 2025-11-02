resource "azurerm_security_center_automation" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  scopes = ['list', 'string'] (Required)
  description = string (Optional)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  action block "list" (Required) {
    resource_id = string (Required)
    connection_string = string (Optional)
    trigger_url = string (Optional)
    type = string (Optional, Computed)
  }

  source block "list" (Required) {
    event_source = string (Required)

    rule_set block "list" (Optional) {

      rule block "list" (Required) {
        expected_value = string (Required)
        operator = string (Required)
        property_path = string (Required)
        property_type = string (Required)
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
