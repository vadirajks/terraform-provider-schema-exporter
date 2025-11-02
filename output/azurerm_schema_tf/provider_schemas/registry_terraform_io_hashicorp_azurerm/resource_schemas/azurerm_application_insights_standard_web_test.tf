resource "azurerm_application_insights_standard_web_test" "name" {
  application_insights_id = string (Required)
  geo_locations = ['list', 'string'] (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  description = string (Optional)
  enabled = bool (Optional)
  frequency = number (Optional)
  id = string (Optional, Computed)
  retry_enabled = bool (Optional)
  synthetic_monitor_id = string (Computed)
  tags = ['map', 'string'] (Optional)
  timeout = number (Optional)

  request block "list" (Required) {
    url = string (Required)
    body = string (Optional)
    follow_redirects_enabled = bool (Optional)
    http_verb = string (Optional)
    parse_dependent_requests_enabled = bool (Optional)

    header block "list" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  validation_rules block "list" (Optional) {
    expected_status_code = number (Optional)
    ssl_cert_remaining_lifetime = number (Optional)
    ssl_check_enabled = bool (Optional)

    content block "list" (Optional) {
      content_match = string (Required)
      ignore_case = bool (Optional)
      pass_if_text_found = bool (Optional)
    }
  }
}
