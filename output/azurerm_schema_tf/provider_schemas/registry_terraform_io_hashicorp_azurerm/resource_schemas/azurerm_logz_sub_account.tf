resource "azurerm_logz_sub_account" "name" {
  logz_monitor_id = string (Required)
  name = string (Required)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  user block "list"  (Required){
    email = string (Required)
    first_name = string (Required)
    last_name = string (Required)
    phone_number = string (Required)
  }
}
