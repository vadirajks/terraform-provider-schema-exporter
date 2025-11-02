resource "azurerm_dynatrace_monitor" "name" {
  location = string (Required)
  marketplace_subscription = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  monitoring_enabled = bool (Optional)
  tags = ['map', 'string'] (Optional)

  environment_properties block "list" (Optional) {

    environment_info block "list" (Required) {
      environment_id = string (Required)
    }
  }

  identity block "list" (Required) {
    type = string (Required)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  plan block "list" (Required) {
    plan = string (Required)
    billing_cycle = string (Optional)
    effective_date = string (Computed)
    usage_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  user block "list" (Required) {
    country = string (Required)
    email = string (Required)
    first_name = string (Required)
    last_name = string (Required)
    phone_number = string (Required)
  }
}
