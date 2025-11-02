resource "google_vmwareengine_external_access_rule" "name" {
  action = string (Required)
  destination_ports = ['list', 'string'] (Required)
  ip_protocol = string (Required)
  name = string (Required)
  parent = string (Required)
  priority = number (Required)
  source_ports = ['list', 'string'] (Required)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  state = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)

  destination_ip_ranges block "list" (Required) {
    external_address = string (Optional)
    ip_address_range = string (Optional)
  }

  source_ip_ranges block "list" (Required) {
    ip_address = string (Optional)
    ip_address_range = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
