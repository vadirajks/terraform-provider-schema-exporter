resource "google_apigee_security_action" "name" {
  env_id = string (Required)
  org_id = string (Required)
  security_action_id = string (Required)
  state = string (Required)
  api_proxies = ['list', 'string'] (Optional)
  create_time = string (Computed)
  description = string (Optional)
  expire_time = string (Optional)
  id = string (Optional, Computed)
  ttl = string (Optional)
  update_time = string (Computed)

  allow block "list" (Optional) {
  }

  condition_config block "list" (Required) {
    access_tokens = ['list', 'string'] (Optional)
    api_keys = ['list', 'string'] (Optional)
    api_products = ['list', 'string'] (Optional)
    asns = ['list', 'string'] (Optional)
    bot_reasons = ['list', 'string'] (Optional)
    developer_apps = ['list', 'string'] (Optional)
    developers = ['list', 'string'] (Optional)
    http_methods = ['list', 'string'] (Optional)
    ip_address_ranges = ['list', 'string'] (Optional)
    region_codes = ['list', 'string'] (Optional)
    user_agents = ['list', 'string'] (Optional)
  }

  deny block "list" (Optional) {
    response_code = number (Optional)
  }

  flag block "list" (Optional) {

    headers block "list" (Optional) {
      name = string (Optional)
      value = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
