resource "google_compute_packet_mirroring" "name" {
  name = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  priority = number (Optional, Computed)
  project = string (Optional, Computed)
  region = string (Optional, Computed)

  collector_ilb block "list" (Required) {
    url = string (Required)
  }

  filter block "list" (Optional) {
    cidr_ranges = ['list', 'string'] (Optional)
    direction = string (Optional)
    ip_protocols = ['list', 'string'] (Optional)
  }

  mirrored_resources block "list" (Required) {
    tags = ['list', 'string'] (Optional)

    instances block "set" (Optional) {
      url = string (Required)
    }

    subnetworks block "set" (Optional) {
      url = string (Required)
    }
  }

  network block "list" (Required) {
    url = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
