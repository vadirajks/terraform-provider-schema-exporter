resource "google_network_security_address_group" "name" {
  capacity = number (Required)
  location = string (Required)
  name = string (Required)
  type = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  items = ['list', 'string'] (Optional)
  labels = ['map', 'string'] (Optional)
  parent = string (Optional)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
