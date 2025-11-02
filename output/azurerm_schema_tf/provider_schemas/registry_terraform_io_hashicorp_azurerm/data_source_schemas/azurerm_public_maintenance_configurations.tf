data "azurerm_public_maintenance_configurations" "name" {
  configs = ['list', ['object', {'description': 'string', 'duration': 'string', 'id': 'string', 'location': 'string', 'maintenance_scope': 'string', 'name': 'string', 'recur_every': 'string', 'time_zone': 'string'}]] (Computed)
  id = string (Optional, Computed)
  location = string (Optional)
  recur_every = string (Optional)
  scope = string (Optional)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
