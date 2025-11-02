resource "google_compute_firewall_policy" "name" {
  parent = string (Required)
  short_name = string (Required)
  creation_timestamp = string (Computed)
  description = string (Optional)
  fingerprint = string (Computed)
  firewall_policy_id = string (Computed)
  id = string (Optional, Computed)
  name = string (Computed)
  rule_tuple_count = number (Computed)
  self_link = string (Computed)
  self_link_with_id = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
