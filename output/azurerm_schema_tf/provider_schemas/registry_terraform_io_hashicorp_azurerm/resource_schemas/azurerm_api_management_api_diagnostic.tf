resource "azurerm_api_management_api_diagnostic" "name" {
  api_management_logger_id = string (Required)
  api_management_name = string (Required)
  api_name = string (Required)
  identifier = string (Required)
  resource_group_name = string (Required)
  always_log_errors = bool (Optional, Computed)
  http_correlation_protocol = string (Optional, Computed)
  id = string (Optional, Computed)
  log_client_ip = bool (Optional, Computed)
  operation_name_format = string (Optional)
  sampling_percentage = number (Optional, Computed)
  verbosity = string (Optional, Computed)

  backend_request block "list" (Optional) {
    body_bytes = number (Optional)
    headers_to_log = ['set', 'string'] (Optional)

    data_masking block "list" (Optional) {

      headers block "list" (Optional) {
        mode = string (Required)
        value = string (Required)
      }

      query_params block "list" (Optional) {
        mode = string (Required)
        value = string (Required)
      }
    }
  }

  backend_response block "list" (Optional) {
    body_bytes = number (Optional)
    headers_to_log = ['set', 'string'] (Optional)

    data_masking block "list" (Optional) {

      headers block "list" (Optional) {
        mode = string (Required)
        value = string (Required)
      }

      query_params block "list" (Optional) {
        mode = string (Required)
        value = string (Required)
      }
    }
  }

  frontend_request block "list" (Optional) {
    body_bytes = number (Optional)
    headers_to_log = ['set', 'string'] (Optional)

    data_masking block "list" (Optional) {

      headers block "list" (Optional) {
        mode = string (Required)
        value = string (Required)
      }

      query_params block "list" (Optional) {
        mode = string (Required)
        value = string (Required)
      }
    }
  }

  frontend_response block "list" (Optional) {
    body_bytes = number (Optional)
    headers_to_log = ['set', 'string'] (Optional)

    data_masking block "list" (Optional) {

      headers block "list" (Optional) {
        mode = string (Required)
        value = string (Required)
      }

      query_params block "list" (Optional) {
        mode = string (Required)
        value = string (Required)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
