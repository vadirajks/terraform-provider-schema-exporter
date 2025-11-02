resource "azurerm_healthcare_dicom_service" "name" {
  location = string (Required)
  name = string (Required)
  workspace_id = string (Required)
  authentication = ['list', ['object', {'audience': ['list', 'string'], 'authority': 'string'}]] (Computed)
  data_partitions_enabled = bool (Optional)
  encryption_key_url = string (Optional)
  id = string (Optional, Computed)
  private_endpoint = ['set', ['object', {'id': 'string', 'name': 'string'}]] (Computed)
  public_network_access_enabled = bool (Optional)
  service_url = string (Computed)
  tags = ['map', 'string'] (Optional)

  cors block "list" (Optional) {
    allow_credentials = bool (Optional)
    allowed_headers = ['list', 'string'] (Optional)
    allowed_methods = ['list', 'string'] (Optional)
    allowed_origins = ['list', 'string'] (Optional)
    max_age_in_seconds = number (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  storage block "list" (Optional) {
    file_system_name = string (Required)
    storage_account_id = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
