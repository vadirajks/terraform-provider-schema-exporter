resource "azurerm_cognitive_account_rai_policy" "name" {
  base_policy_name = string (Required)
  cognitive_account_id = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  mode = string (Optional)
  tags = ['map', 'string'] (Optional)

  content_filter block "list" (Required) {
    block_enabled = bool (Required)
    filter_enabled = bool (Required)
    name = string (Required)
    severity_threshold = string (Required)
    source = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
