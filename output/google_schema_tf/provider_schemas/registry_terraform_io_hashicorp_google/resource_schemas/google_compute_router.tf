resource "google_compute_router" "name" {
  name = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  encrypted_interconnect_router = bool (Optional)
  id = string (Optional, Computed)
  network = string (Optional)
  project = string (Optional, Computed)
  region = string (Optional, Computed)
  self_link = string (Computed)

  bgp block "list" (Optional) {
    asn = number (Required)
    advertise_mode = string (Optional)
    advertised_groups = ['list', 'string'] (Optional)
    identifier_range = string (Optional, Computed)
    keepalive_interval = number (Optional)

    advertised_ip_ranges block "set" (Optional) {
      range = string (Required)
      description = string (Optional)
    }
  }

  md5_authentication_keys block "list" (Optional) {
    key = string (Required)
    name = string (Required)
  }

  params block "list" (Optional) {
    resource_manager_tags = ['map', 'string'] (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
