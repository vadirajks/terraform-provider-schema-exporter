resource "azurerm_application_insights_analytics_item" "name" {
  application_insights_id = string (Required)
  content = string (Required)
  name = string (Required)
  scope = string (Required)
  type = string (Required)
  function_alias = string (Optional)
  id = string (Optional, Computed)
  time_created = string (Computed)
  time_modified = string (Computed)
  version = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
