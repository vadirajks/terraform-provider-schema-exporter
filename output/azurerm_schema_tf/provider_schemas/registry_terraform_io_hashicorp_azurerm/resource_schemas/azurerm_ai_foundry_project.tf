resource "azurerm_ai_foundry_project" "name" {
  ai_services_hub_id = string (Required)
  location = string (Required)
  name = string (Required)
  description = string (Optional)
  friendly_name = string (Optional)
  high_business_impact_enabled = bool (Optional, Computed)
  id = string (Optional, Computed)
  primary_user_assigned_identity = string (Optional)
  project_id = string (Computed)
  tags = ['map', 'string'] (Optional)

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
