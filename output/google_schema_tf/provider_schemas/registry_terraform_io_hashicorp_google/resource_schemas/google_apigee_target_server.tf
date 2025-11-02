resource "google_apigee_target_server" "name" {
  env_id = string (Required)
  host = string (Required)
  name = string (Required)
  port = number (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  is_enabled = bool (Optional)
  protocol = string (Optional, Computed)

  s_sl_info block "list" (Optional) {
    enabled = bool (Required)
    ciphers = ['list', 'string'] (Optional)
    client_auth_enabled = bool (Optional)
    enforce = bool (Optional)
    ignore_validation_errors = bool (Optional)
    key_alias = string (Optional)
    key_store = string (Optional)
    protocols = ['list', 'string'] (Optional)
    trust_store = string (Optional)

    common_name block "list" (Optional) {
      value = string (Optional)
      wildcard_match = bool (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
