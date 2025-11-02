resource "google_active_directory_domain_trust" "name" {
  domain = string (Required)
  target_dns_ip_addresses = ['set', 'string'] (Required)
  target_domain_name = string (Required)
  trust_direction = string (Required)
  trust_handshake_secret = string (Required)
  trust_type = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  selective_authentication = bool (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
