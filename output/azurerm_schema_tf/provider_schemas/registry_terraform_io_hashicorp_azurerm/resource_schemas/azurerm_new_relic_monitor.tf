resource "azurerm_new_relic_monitor" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  account_creation_source = string (Optional)
  account_id = string (Optional, Computed)
  id = string (Optional, Computed)
  ingestion_key = string (Optional)
  org_creation_source = string (Optional)
  organization_id = string (Optional, Computed)
  user_id = string (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  plan block "list" (Required) {
    effective_date = string (Required)
    billing_cycle = string (Optional)
    plan_id = string (Optional)
    usage_type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }

  user block "list" (Required) {
    email = string (Required)
    first_name = string (Required)
    last_name = string (Required)
    phone_number = string (Required)
  }
}
