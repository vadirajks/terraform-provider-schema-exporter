resource "azurerm_virtual_machine_run_command" "name" {
  location = string (Required)
  name = string (Required)
  virtual_machine_id = string (Required)
  error_blob_uri = string (Optional)
  id = string (Optional, Computed)
  instance_view = ['list', ['object', {'end_time': 'string', 'error_message': 'string', 'execution_message': 'string', 'execution_state': 'string', 'exit_code': 'number', 'output': 'string', 'start_time': 'string'}]] (Computed)
  output_blob_uri = string (Optional)
  run_as_password = string (Optional)
  run_as_user = string (Optional)
  tags = ['map', 'string'] (Optional)

  error_blob_managed_identity block "list" (Optional) {
    client_id = string (Optional)
    object_id = string (Optional)
  }

  output_blob_managed_identity block "list" (Optional) {
    client_id = string (Optional)
    object_id = string (Optional)
  }

  parameter block "list" (Optional) {
    name = string (Required)
    value = string (Required)
  }

  protected_parameter block "list" (Optional) {
    name = string (Required)
    value = string (Required)
  }

  source block "list" (Required) {
    command_id = string (Optional)
    script = string (Optional)
    script_uri = string (Optional)

    script_uri_managed_identity block "list" (Optional) {
      client_id = string (Optional)
      object_id = string (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
