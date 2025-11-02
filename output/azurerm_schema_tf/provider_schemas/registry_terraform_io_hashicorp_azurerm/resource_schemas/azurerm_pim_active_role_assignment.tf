resource "azurerm_pim_active_role_assignment" "name" {
  principal_id = string (Required)
  role_definition_id = string (Required)
  scope = string (Required)
  id = string (Optional, Computed)
  justification = string (Optional, Computed)
  principal_type = string (Computed)

  schedule block "list" (Optional) {
    start_date_time = string (Optional, Computed)

    expiration block "list" (Optional) {
      duration_days = number (Optional, Computed)
      duration_hours = number (Optional, Computed)
      end_date_time = string (Optional, Computed)
    }
  }

  ticket block "list" (Optional) {
    number = string (Optional)
    system = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
  }
}
