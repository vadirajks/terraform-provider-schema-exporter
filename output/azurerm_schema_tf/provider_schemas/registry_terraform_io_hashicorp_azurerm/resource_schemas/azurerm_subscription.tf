resource "azurerm_subscription" "name" {
  subscription_name = string (Required)
  alias = string (Optional, Computed)
  billing_scope_id = string (Optional)
  id = string (Optional, Computed)
  subscription_id = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tenant_id = string (Computed)
  workload = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
