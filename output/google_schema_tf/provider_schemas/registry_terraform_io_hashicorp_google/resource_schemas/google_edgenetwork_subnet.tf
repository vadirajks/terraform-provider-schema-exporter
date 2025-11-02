resource "google_edgenetwork_subnet" "name" {
  location = string (Required)
  network = string (Required)
  subnet_id = string (Required)
  zone = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  ipv4_cidr = ['list', 'string'] (Optional)
  ipv6_cidr = ['list', 'string'] (Optional)
  labels = ['map', 'string'] (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  state = string (Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)
  vlan_id = number (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
