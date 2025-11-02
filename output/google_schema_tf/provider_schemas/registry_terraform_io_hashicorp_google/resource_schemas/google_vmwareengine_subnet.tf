resource "google_vmwareengine_subnet" "name" {
  ip_cidr_range = string (Required)
  name = string (Required)
  parent = string (Required)
  create_time = string (Computed)
  dhcp_address_ranges = ['list', ['object', {'first_address': 'string', 'last_address': 'string'}]] (Computed)
  gateway_id = string (Computed)
  gateway_ip = string (Computed)
  id = string (Optional, Computed)
  standard_config = bool (Computed)
  state = string (Computed)
  type = string (Computed)
  uid = string (Computed)
  update_time = string (Computed)
  vlan_id = number (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
