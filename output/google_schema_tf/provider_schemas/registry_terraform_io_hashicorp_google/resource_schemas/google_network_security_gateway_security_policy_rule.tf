resource "google_network_security_gateway_security_policy_rule" "name" {
  basic_profile = string (Required)
  enabled = bool (Required)
  gateway_security_policy = string (Required)
  location = string (Required)
  name = string (Required)
  priority = number (Required)
  session_matcher = string (Required)
  application_matcher = string (Optional)
  create_time = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  project = string (Optional, Computed)
  self_link = string (Computed)
  tls_inspection_enabled = bool (Optional)
  update_time = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
