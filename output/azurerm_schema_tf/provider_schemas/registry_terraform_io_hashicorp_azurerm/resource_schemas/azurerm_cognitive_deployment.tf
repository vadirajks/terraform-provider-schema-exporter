resource "azurerm_cognitive_deployment" "name" {
  cognitive_account_id = string (Required)
  name = string (Required)
  dynamic_throttling_enabled = bool (Optional)
  id = string (Optional, Computed)
  rai_policy_name = string (Optional)
  version_upgrade_option = string (Optional)

  model block "list" (Required) {
    format = string (Required)
    name = string (Required)
    version = string (Optional)
  }

  sku block "list" (Required) {
    name = string (Required)
    capacity = number (Optional)
    family = string (Optional)
    size = string (Optional)
    tier = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
