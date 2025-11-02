resource "azurerm_datadog_monitor_sso_configuration" "name" {
  datadog_monitor_id = string (Required)
  enterprise_application_id = string (Required)
  id = string (Optional, Computed)
  login_url = string (Computed)
  name = string (Optional)
  single_sign_on = string (Optional, Computed)
  single_sign_on_enabled = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
