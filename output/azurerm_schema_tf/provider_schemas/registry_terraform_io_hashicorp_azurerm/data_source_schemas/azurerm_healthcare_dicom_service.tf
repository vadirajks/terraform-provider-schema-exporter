data "azurerm_healthcare_dicom_service" "name" {
  name = string (Required)
  workspace_id = string (Required)
  authentication = ['list', ['object', {'audience': ['list', 'string'], 'authority': 'string'}]] (Computed)
  cors = ['list', ['object', {'allow_credentials': 'bool', 'allowed_headers': ['list', 'string'], 'allowed_methods': ['list', 'string'], 'allowed_origins': ['list', 'string'], 'max_age_in_seconds': 'number'}]] (Computed)
  data_partitions_enabled = bool (Computed)
  encryption_key_url = string (Computed)
  id = string (Optional, Computed)
  identity = ['list', ['object', {'identity_ids': ['list', 'string'], 'principal_id': 'string', 'tenant_id': 'string', 'type': 'string'}]] (Computed)
  location = string (Computed)
  private_endpoint = ['list', ['object', {'id': 'string', 'name': 'string'}]] (Computed)
  service_url = string (Computed)
  storage = ['list', ['object', {'file_system_name': 'string', 'storage_account_id': 'string'}]] (Computed)
  tags = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
