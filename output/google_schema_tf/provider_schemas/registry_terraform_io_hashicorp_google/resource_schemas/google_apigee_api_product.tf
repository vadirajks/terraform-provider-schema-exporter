resource "google_apigee_api_product" "name" {
  display_name = string (Required)
  name = string (Required)
  org_id = string (Required)
  api_resources = ['set', 'string'] (Optional)
  approval_type = string (Optional)
  created_at = string (Computed)
  description = string (Optional)
  environments = ['set', 'string'] (Optional)
  id = string (Optional, Computed)
  last_modified_at = string (Computed)
  proxies = ['set', 'string'] (Optional)
  quota = string (Optional)
  quota_counter_scope = string (Optional)
  quota_interval = string (Optional)
  quota_time_unit = string (Optional)
  scopes = ['list', 'string'] (Optional)
  space = string (Optional)

  attributes block "set" (Optional) {
    name = string (Optional)
    value = string (Optional)
  }

  graphql_operation_group block "list" (Optional) {
    operation_config_type = string (Optional)

    operation_configs block "set" (Optional) {
      api_source = string (Optional)

      attributes block "set" (Optional) {
        name = string (Optional)
        value = string (Optional)
      }

      operations block "set" (Optional) {
        operation = string (Optional)
        operation_types = ['set', 'string'] (Optional)
      }

      quota block "list" (Optional) {
        interval = string (Optional)
        limit = string (Optional)
        time_unit = string (Optional)
      }
    }
  }

  grpc_operation_group block "list" (Optional) {

    operation_configs block "set" (Optional) {
      api_source = string (Optional)
      methods = ['set', 'string'] (Optional)
      service = string (Optional)

      attributes block "set" (Optional) {
        name = string (Optional)
        value = string (Optional)
      }

      quota block "list" (Optional) {
        interval = string (Optional)
        limit = string (Optional)
        time_unit = string (Optional)
      }
    }
  }

  operation_group block "list" (Optional) {
    operation_config_type = string (Optional)

    operation_configs block "set" (Optional) {
      api_source = string (Optional)

      attributes block "set" (Optional) {
        name = string (Optional)
        value = string (Optional)
      }

      operations block "list" (Optional) {
        methods = ['set', 'string'] (Optional)
        resource = string (Optional)
      }

      quota block "list" (Optional) {
        interval = string (Optional)
        limit = string (Optional)
        time_unit = string (Optional)
      }
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
