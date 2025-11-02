resource "azurerm_arc_kubernetes_flux_configuration" "name" {
  cluster_id = string (Required)
  name = string (Required)
  namespace = string (Required)
  continuous_reconciliation_enabled = bool (Optional)
  id = string (Optional, Computed)
  scope = string (Optional)

  blob_storage block "list" (Optional) {
    container_id = string (Required)
    account_key = string (Optional)
    local_auth_reference = string (Optional)
    sas_token = string (Optional)
    sync_interval_in_seconds = number (Optional)
    timeout_in_seconds = number (Optional)

    service_principal block "list" (Optional) {
      client_id = string (Required)
      tenant_id = string (Required)
      client_certificate_base64 = string (Optional)
      client_certificate_password = string (Optional)
      client_certificate_send_chain = bool (Optional)
      client_secret = string (Optional)
    }
  }

  bucket block "list" (Optional) {
    bucket_name = string (Required)
    url = string (Required)
    access_key = string (Optional)
    local_auth_reference = string (Optional)
    secret_key_base64 = string (Optional)
    sync_interval_in_seconds = number (Optional)
    timeout_in_seconds = number (Optional)
    tls_enabled = bool (Optional)
  }

  git_repository block "list" (Optional) {
    reference_type = string (Required)
    reference_value = string (Required)
    url = string (Required)
    https_ca_cert_base64 = string (Optional)
    https_key_base64 = string (Optional)
    https_user = string (Optional)
    local_auth_reference = string (Optional)
    ssh_known_hosts_base64 = string (Optional)
    ssh_private_key_base64 = string (Optional)
    sync_interval_in_seconds = number (Optional)
    timeout_in_seconds = number (Optional)
  }

  kustomizations block "set" (Required) {
    name = string (Required)
    depends_on = ['list', 'string'] (Optional)
    garbage_collection_enabled = bool (Optional)
    path = string (Optional)
    recreating_enabled = bool (Optional)
    retry_interval_in_seconds = number (Optional)
    sync_interval_in_seconds = number (Optional)
    timeout_in_seconds = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
