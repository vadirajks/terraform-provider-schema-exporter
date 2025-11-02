resource "google_dns_policy" "name" {
  name = string (Required)
  description = string (Optional)
  enable_inbound_forwarding = bool (Optional)
  enable_logging = bool (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  alternative_name_server_config block "list" (Optional) {

    target_name_servers block "set" (Required) {
      ipv4_address = string (Required)
      forwarding_path = string (Optional)
    }
  }

  dns64_config block "list" (Optional) {

    scope block "list" (Required) {
      all_queries = bool (Optional)
    }
  }

  networks block "set" (Optional) {
    network_url = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
