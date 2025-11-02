resource "google_compute_network_firewall_policy" "name" {
  name = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  fingerprint = string (Computed)
  id = string (Optional, Computed)
  network_firewall_policy_id = string (Computed)
  policy_type = string (Optional, Computed)
  project = string (Optional, Computed)
  rule_tuple_count = number (Computed)
  self_link = string (Computed)
  self_link_with_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
