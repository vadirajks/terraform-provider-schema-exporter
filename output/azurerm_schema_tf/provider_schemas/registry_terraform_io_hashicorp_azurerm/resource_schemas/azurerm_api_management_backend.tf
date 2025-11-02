resource "azurerm_api_management_backend" "name" {
  api_management_name = string (Required)
  name = string (Required)
  protocol = string (Required)
  resource_group_name = string (Required)
  url = string (Required)
  description = string (Optional)
  id = string (Optional, Computed)
  resource_id = string (Optional)
  title = string (Optional)

  credentials block "list" (Optional) {
    certificate = ['list', 'string'] (Optional)
    header = ['map', 'string'] (Optional)
    query = ['map', 'string'] (Optional)

    authorization block "list" (Optional) {
      parameter = string (Optional)
      scheme = string (Optional)
    }
  }

  proxy block "list" (Optional) {
    url = string (Required)
    username = string (Required)
    password = string (Optional)
  }

  service_fabric_cluster block "list" (Optional) {
    management_endpoints = ['set', 'string'] (Required)
    max_partition_resolution_retries = number (Required)
    client_certificate_id = string (Optional, Computed)
    client_certificate_thumbprint = string (Optional, Computed)
    server_certificate_thumbprints = ['set', 'string'] (Optional)

    server_x509_name block "set" (Optional) {
      issuer_certificate_thumbprint = string (Required)
      name = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  tls block "list" (Optional) {
    validate_certificate_chain = bool (Optional)
    validate_certificate_name = bool (Optional)
  }
}
