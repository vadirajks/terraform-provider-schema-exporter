resource "google_datastream_private_connection" "name" {
  display_name = string (Required)
  location = string (Required)
  private_connection_id = string (Required)
  create_without_validation = bool (Optional)
  effective_labels = ['map', 'string'] (Computed)
  error = ['list', ['object', {'details': ['map', 'string'], 'message': 'string'}]] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)

  psc_interface_config block "list" (Optional) {
    network_attachment = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc_peering_config block "list" (Optional) {
    subnet = string (Required)
    vpc = string (Required)
  }
}
