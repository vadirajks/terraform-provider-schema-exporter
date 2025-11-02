resource "azurerm_api_management" "name" {
  location = string (Required)
  name = string (Required)
  publisher_email = string (Required)
  publisher_name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  client_certificate_enabled = bool (Optional)
  developer_portal_url = string (Computed)
  gateway_disabled = bool (Optional)
  gateway_regional_url = string (Computed)
  gateway_url = string (Computed)
  id = string (Optional, Computed)
  management_api_url = string (Computed)
  min_api_version = string (Optional)
  notification_sender_email = string (Optional, Computed)
  portal_url = string (Computed)
  private_ip_addresses = ['list', 'string'] (Computed)
  public_ip_address_id = string (Optional)
  public_ip_addresses = ['list', 'string'] (Computed)
  public_network_access_enabled = bool (Optional)
  scm_url = string (Computed)
  tags = ['map', 'string'] (Optional)
  virtual_network_type = string (Optional)
  zones = ['set', 'string'] (Optional)

  additional_location block "list" (Optional) {
    location = string (Required)
    capacity = number (Optional, Computed)
    gateway_disabled = bool (Optional)
    gateway_regional_url = string (Computed)
    private_ip_addresses = ['list', 'string'] (Computed)
    public_ip_address_id = string (Optional)
    public_ip_addresses = ['list', 'string'] (Computed)
    zones = ['set', 'string'] (Optional)

    virtual_network_configuration block "list" (Optional) {
      subnet_id = string (Required)
    }
  }

  certificate block "list" (Optional) {
    encoded_certificate = string (Required)
    store_name = string (Required)
    certificate_password = string (Optional)
    expiry = string (Computed)
    subject = string (Computed)
    thumbprint = string (Computed)
  }

  delegation block "list" (Optional) {
    subscriptions_enabled = bool (Optional)
    url = string (Optional)
    user_registration_enabled = bool (Optional)
    validation_key = string (Optional)
  }

  hostname_configuration block "list" (Optional) {

    developer_portal block "list" (Optional) {
      host_name = string (Required)
      certificate = string (Optional)
      certificate_password = string (Optional)
      certificate_source = string (Computed)
      certificate_status = string (Computed)
      expiry = string (Computed)
      key_vault_certificate_id = string (Optional, Computed)
      key_vault_id = string (Optional, Computed)
      negotiate_client_certificate = bool (Optional)
      ssl_keyvault_identity_client_id = string (Optional)
      subject = string (Computed)
      thumbprint = string (Computed)
    }

    management block "list" (Optional) {
      host_name = string (Required)
      certificate = string (Optional)
      certificate_password = string (Optional)
      certificate_source = string (Computed)
      certificate_status = string (Computed)
      expiry = string (Computed)
      key_vault_certificate_id = string (Optional, Computed)
      key_vault_id = string (Optional, Computed)
      negotiate_client_certificate = bool (Optional)
      ssl_keyvault_identity_client_id = string (Optional)
      subject = string (Computed)
      thumbprint = string (Computed)
    }

    portal block "list" (Optional) {
      host_name = string (Required)
      certificate = string (Optional)
      certificate_password = string (Optional)
      certificate_source = string (Computed)
      certificate_status = string (Computed)
      expiry = string (Computed)
      key_vault_certificate_id = string (Optional, Computed)
      key_vault_id = string (Optional, Computed)
      negotiate_client_certificate = bool (Optional)
      ssl_keyvault_identity_client_id = string (Optional)
      subject = string (Computed)
      thumbprint = string (Computed)
    }

    proxy block "list" (Optional) {
      host_name = string (Required)
      certificate = string (Optional)
      certificate_password = string (Optional)
      certificate_source = string (Computed)
      certificate_status = string (Computed)
      default_ssl_binding = bool (Optional, Computed)
      expiry = string (Computed)
      key_vault_certificate_id = string (Optional, Computed)
      key_vault_id = string (Optional, Computed)
      negotiate_client_certificate = bool (Optional)
      ssl_keyvault_identity_client_id = string (Optional)
      subject = string (Computed)
      thumbprint = string (Computed)
    }

    scm block "list" (Optional) {
      host_name = string (Required)
      certificate = string (Optional)
      certificate_password = string (Optional)
      certificate_source = string (Computed)
      certificate_status = string (Computed)
      expiry = string (Computed)
      key_vault_certificate_id = string (Optional, Computed)
      key_vault_id = string (Optional, Computed)
      negotiate_client_certificate = bool (Optional)
      ssl_keyvault_identity_client_id = string (Optional)
      subject = string (Computed)
      thumbprint = string (Computed)
    }
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  protocols block "list" (Optional) {
    enable_http2 = bool (Optional, Computed)
    http2_enabled = bool (Optional, Computed)
  }

  security block "list" (Optional) {
    backend_ssl30_enabled = bool (Optional, Computed)
    backend_tls10_enabled = bool (Optional, Computed)
    backend_tls11_enabled = bool (Optional, Computed)
    enable_backend_ssl30 = bool (Optional, Computed)
    enable_backend_tls10 = bool (Optional, Computed)
    enable_backend_tls11 = bool (Optional, Computed)
    enable_frontend_ssl30 = bool (Optional, Computed)
    enable_frontend_tls10 = bool (Optional, Computed)
    enable_frontend_tls11 = bool (Optional, Computed)
    frontend_ssl30_enabled = bool (Optional, Computed)
    frontend_tls10_enabled = bool (Optional, Computed)
    frontend_tls11_enabled = bool (Optional, Computed)
    tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled = bool (Optional)
    tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled = bool (Optional)
    tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled = bool (Optional)
    tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled = bool (Optional)
    tls_rsa_with_aes128_cbc_sha256_ciphers_enabled = bool (Optional)
    tls_rsa_with_aes128_cbc_sha_ciphers_enabled = bool (Optional)
    tls_rsa_with_aes128_gcm_sha256_ciphers_enabled = bool (Optional)
    tls_rsa_with_aes256_cbc_sha256_ciphers_enabled = bool (Optional)
    tls_rsa_with_aes256_cbc_sha_ciphers_enabled = bool (Optional)
    tls_rsa_with_aes256_gcm_sha384_ciphers_enabled = bool (Optional)
    triple_des_ciphers_enabled = bool (Optional)
  }

  sign_in block "list" (Optional) {
    enabled = bool (Required)
  }

  sign_up block "list" (Optional) {
    enabled = bool (Required)

    terms_of_service block "list" (Required) {
      consent_required = bool (Required)
      enabled = bool (Required)
      text = string (Optional)
    }
  }

  tenant_access block "list" (Optional) {
    enabled = bool (Required)
    primary_key = string (Computed)
    secondary_key = string (Computed)
    tenant_id = string (Computed)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }

  virtual_network_configuration block "list" (Optional) {
    subnet_id = string (Required)
  }
}
