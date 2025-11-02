resource "google_database_migration_service_private_connection" "name" {
  location = string (Required)
  private_connection_id = string (Required)
  create_without_validation = bool (Optional)
  display_name = string (Optional, Computed)
  effective_labels = ['map', 'string'] (Computed)
  error = ['list', ['object', {'details': ['map', 'string'], 'message': 'string'}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_peering_config block "list" (Required) {
    subnet = string (Required)
    vpc_name = string (Required)
  }
}
