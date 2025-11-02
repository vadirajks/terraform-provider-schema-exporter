resource "google_edgenetwork_interconnect_attachment" "name" {
  interconnect = string (Required)
  interconnect_attachment_id = string (Required)
  location = string (Required)
  network = string (Required)
  vlan_id = number (Required)
  zone = string (Required)
  create_time = string (Computed)
  description = string (Optional)
  effective_labels = ['map', 'string'] (Computed)
  id = string (Optional, Computed)
  labels = ['map', 'string'] (Optional)
  mtu = number (Optional)
  name = string (Computed)
  project = string (Optional, Computed)
  terraform_labels = ['map', 'string'] (Computed)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
