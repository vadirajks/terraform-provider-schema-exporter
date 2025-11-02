resource "azurerm_spring_cloud_app" "name" {
  name = string (Required)
  resource_group_name = string (Required)
  service_name = string (Required)
  addon_json = string (Optional, Computed)
  fqdn = string (Computed)
  https_only = bool (Optional)
  id = string (Optional, Computed)
  is_public = bool (Optional)
  public_endpoint_enabled = bool (Optional)
  tls_enabled = bool (Optional)
  url = string (Computed)

  custom_persistent_disk block "list" (Optional) {
    mount_path = string (Required)
    share_name = string (Required)
    storage_name = string (Required)
    mount_options = ['set', 'string'] (Optional)
    read_only_enabled = bool (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  ingress_settings block "list" (Optional) {
    backend_protocol = string (Optional)
    read_timeout_in_seconds = number (Optional)
    send_timeout_in_seconds = number (Optional)
    session_affinity = string (Optional)
    session_cookie_max_age = number (Optional)
  }

  persistent_disk block "list" (Optional) {
    size_in_gb = number (Required)
    mount_path = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
