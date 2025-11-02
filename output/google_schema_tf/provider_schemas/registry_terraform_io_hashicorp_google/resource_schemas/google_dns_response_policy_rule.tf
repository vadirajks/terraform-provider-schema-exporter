resource "google_dns_response_policy_rule" "name" {
  dns_name = string (Required)
  response_policy = string (Required)
  rule_name = string (Required)
  id = string (Optional, Computed)
  project = string (Optional, Computed)

  local_data block "list" (Optional) {

    local_datas block "list" (Required) {
      name = string (Required)
      type = string (Required)
      rrdatas = ['list', 'string'] (Optional)
      ttl = number (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
