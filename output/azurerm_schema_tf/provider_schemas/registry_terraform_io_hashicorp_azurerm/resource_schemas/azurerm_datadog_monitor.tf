resource "azurerm_datadog_monitor" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  id = string (Optional, Computed)
  marketplace_subscription_status = string (Computed)
  monitoring_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  datadog_organization block "list" (Required) {
    api_key = string (Required)
    application_key = string (Required)
    enterprise_app_id = string (Optional)
    id = string (Computed)
    linking_auth_code = string (Optional)
    linking_client_id = string (Optional)
    name = string (Computed)
    redirect_uri = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  user block "list" (Required) {
    email = string (Required)
    name = string (Required)
    phone_number = string (Optional)
  }
}
