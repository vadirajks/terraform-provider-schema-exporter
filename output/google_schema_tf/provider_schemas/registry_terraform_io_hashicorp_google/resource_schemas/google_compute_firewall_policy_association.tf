resource "google_compute_firewall_policy_association" "name" {
  attachment_target = string (Required)
  firewall_policy = string (Required)
  name = string (Required)
  id = string (Optional, Computed)
  short_name = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
