resource "azurerm_logic_app_workflow" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  access_endpoint = string (Computed)
  connector_endpoint_ip_addresses = ['list', 'string'] (Computed)
  connector_outbound_ip_addresses = ['list', 'string'] (Computed)
  enabled = bool (Optional)
  id = string (Optional, Computed)
  integration_service_environment_id = string (Optional)
  logic_app_integration_account_id = string (Optional)
  parameters = ['map', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  workflow_endpoint_ip_addresses = ['list', 'string'] (Computed)
  workflow_outbound_ip_addresses = ['list', 'string'] (Computed)
  workflow_parameters = ['map', 'string'] (Optional)
  workflow_schema = string (Optional)
  workflow_version = string (Optional)

  access_control block "list" (Optional) {

    action block "list" (Optional) {
      allowed_caller_ip_address_range = ['set', 'string'] (Required)
    }

    content block "list" (Optional) {
      allowed_caller_ip_address_range = ['set', 'string'] (Required)
    }

    trigger block "list" (Optional) {
      allowed_caller_ip_address_range = ['set', 'string'] (Optional)

      open_authentication_policy block "set" (Optional) {
        name = string (Required)

        claim block "set" (Required) {
          name = string (Required)
          value = string (Required)
        }
      }
    }

    workflow_management block "list" (Optional) {
      allowed_caller_ip_address_range = ['set', 'string'] (Required)
    }
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
