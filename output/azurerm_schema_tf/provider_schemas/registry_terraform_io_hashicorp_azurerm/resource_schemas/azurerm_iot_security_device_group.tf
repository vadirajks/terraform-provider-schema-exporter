resource "azurerm_iot_security_device_group" "name" {
  iothub_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)

  allow_rule block "list" (Optional) {
    connection_from_ips_not_allowed = ['set', 'string'] (Optional)
    connection_to_ips_not_allowed = ['set', 'string'] (Optional)
    local_users_not_allowed = ['set', 'string'] (Optional)
    processes_not_allowed = ['set', 'string'] (Optional)
  }

  range_rule block "set" (Optional) {
    duration = string (Required)
    max = number (Required)
    min = number (Required)
    type = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
