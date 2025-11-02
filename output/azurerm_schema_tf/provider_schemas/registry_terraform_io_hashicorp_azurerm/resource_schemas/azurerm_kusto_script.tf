resource "azurerm_kusto_script" "name" {
  database_id = string (Required)
  name = string (Required)
  continue_on_errors_enabled = bool (Optional)
  force_an_update_when_value_changed = string (Optional, Computed)
  id = string (Optional, Computed)
  sas_token = string (Optional)
  script_content = string (Optional)
  url = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
