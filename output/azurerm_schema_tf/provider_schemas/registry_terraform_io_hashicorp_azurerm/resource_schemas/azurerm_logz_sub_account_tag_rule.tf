resource "azurerm_logz_sub_account_tag_rule" "name" {
  logz_sub_account_id = string (Required)
  id = string (Optional, Computed)
  send_aad_logs = bool (Optional)
  send_activity_logs = bool (Optional)
  send_subscription_logs = bool (Optional)

  tag_filter block "list"  (Optional){
    action = string (Required)
    name = string (Required)
    value = string (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
