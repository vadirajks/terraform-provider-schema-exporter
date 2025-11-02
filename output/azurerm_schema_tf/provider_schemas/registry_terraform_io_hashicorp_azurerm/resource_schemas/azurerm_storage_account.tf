resource "azurerm_storage_account" "name" {
  account_replication_type = string (Required)
  account_tier = string (Required)
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  access_tier = string (Optional, Computed)
  account_kind = string (Optional)
  allow_nested_items_to_be_public = bool (Optional)
  allowed_copy_scope = string (Optional)
  cross_tenant_replication_enabled = bool (Optional)
  default_to_oauth_authentication = bool (Optional)
  dns_endpoint_type = string (Optional)
  edge_zone = string (Optional)
  https_traffic_only_enabled = bool (Optional)
  id = string (Optional, Computed)
  infrastructure_encryption_enabled = bool (Optional)
  is_hns_enabled = bool (Optional)
  large_file_share_enabled = bool (Optional, Computed)
  local_user_enabled = bool (Optional)
  min_tls_version = string (Optional)
  nfsv3_enabled = bool (Optional)
  primary_access_key = string (Computed)
  primary_blob_connection_string = string (Computed)
  primary_blob_endpoint = string (Computed)
  primary_blob_host = string (Computed)
  primary_blob_internet_endpoint = string (Computed)
  primary_blob_internet_host = string (Computed)
  primary_blob_microsoft_endpoint = string (Computed)
  primary_blob_microsoft_host = string (Computed)
  primary_connection_string = string (Computed)
  primary_dfs_endpoint = string (Computed)
  primary_dfs_host = string (Computed)
  primary_dfs_internet_endpoint = string (Computed)
  primary_dfs_internet_host = string (Computed)
  primary_dfs_microsoft_endpoint = string (Computed)
  primary_dfs_microsoft_host = string (Computed)
  primary_file_endpoint = string (Computed)
  primary_file_host = string (Computed)
  primary_file_internet_endpoint = string (Computed)
  primary_file_internet_host = string (Computed)
  primary_file_microsoft_endpoint = string (Computed)
  primary_file_microsoft_host = string (Computed)
  primary_location = string (Computed)
  primary_queue_endpoint = string (Computed)
  primary_queue_host = string (Computed)
  primary_queue_microsoft_endpoint = string (Computed)
  primary_queue_microsoft_host = string (Computed)
  primary_table_endpoint = string (Computed)
  primary_table_host = string (Computed)
  primary_table_microsoft_endpoint = string (Computed)
  primary_table_microsoft_host = string (Computed)
  primary_web_endpoint = string (Computed)
  primary_web_host = string (Computed)
  primary_web_internet_endpoint = string (Computed)
  primary_web_internet_host = string (Computed)
  primary_web_microsoft_endpoint = string (Computed)
  primary_web_microsoft_host = string (Computed)
  provisioned_billing_model_version = string (Optional)
  public_network_access_enabled = bool (Optional)
  queue_encryption_key_type = string (Optional)
  secondary_access_key = string (Computed)
  secondary_blob_connection_string = string (Computed)
  secondary_blob_endpoint = string (Computed)
  secondary_blob_host = string (Computed)
  secondary_blob_internet_endpoint = string (Computed)
  secondary_blob_internet_host = string (Computed)
  secondary_blob_microsoft_endpoint = string (Computed)
  secondary_blob_microsoft_host = string (Computed)
  secondary_connection_string = string (Computed)
  secondary_dfs_endpoint = string (Computed)
  secondary_dfs_host = string (Computed)
  secondary_dfs_internet_endpoint = string (Computed)
  secondary_dfs_internet_host = string (Computed)
  secondary_dfs_microsoft_endpoint = string (Computed)
  secondary_dfs_microsoft_host = string (Computed)
  secondary_file_endpoint = string (Computed)
  secondary_file_host = string (Computed)
  secondary_file_internet_endpoint = string (Computed)
  secondary_file_internet_host = string (Computed)
  secondary_file_microsoft_endpoint = string (Computed)
  secondary_file_microsoft_host = string (Computed)
  secondary_location = string (Computed)
  secondary_queue_endpoint = string (Computed)
  secondary_queue_host = string (Computed)
  secondary_queue_microsoft_endpoint = string (Computed)
  secondary_queue_microsoft_host = string (Computed)
  secondary_table_endpoint = string (Computed)
  secondary_table_host = string (Computed)
  secondary_table_microsoft_endpoint = string (Computed)
  secondary_table_microsoft_host = string (Computed)
  secondary_web_endpoint = string (Computed)
  secondary_web_host = string (Computed)
  secondary_web_internet_endpoint = string (Computed)
  secondary_web_internet_host = string (Computed)
  secondary_web_microsoft_endpoint = string (Computed)
  secondary_web_microsoft_host = string (Computed)
  sftp_enabled = bool (Optional)
  shared_access_key_enabled = bool (Optional)
  table_encryption_key_type = string (Optional)
  tags = ['map', 'string'] (Optional)

  azure_files_authentication block "list" (Optional) {
    directory_type = string (Required)
    default_share_level_permission = string (Optional)

    active_directory block "list" (Optional) {
      domain_guid = string (Required)
      domain_name = string (Required)
      domain_sid = string (Optional)
      forest_name = string (Optional)
      netbios_domain_name = string (Optional)
      storage_sid = string (Optional)
    }
  }

  blob_properties block "list" (Optional) {
    change_feed_enabled = bool (Optional)
    change_feed_retention_in_days = number (Optional)
    default_service_version = string (Optional, Computed)
    last_access_time_enabled = bool (Optional)
    versioning_enabled = bool (Optional)

    container_delete_retention_policy block "list" (Optional) {
      days = number (Optional)
    }

    cors_rule block "list" (Optional) {
      allowed_headers = ['list', 'string'] (Required)
      allowed_methods = ['list', 'string'] (Required)
      allowed_origins = ['list', 'string'] (Required)
      exposed_headers = ['list', 'string'] (Required)
      max_age_in_seconds = number (Required)
    }

    delete_retention_policy block "list" (Optional) {
      days = number (Optional)
      permanent_delete_enabled = bool (Optional)
    }

    restore_policy block "list" (Optional) {
      days = number (Required)
    }
  }

  custom_domain block "list" (Optional) {
    name = string (Required)
    use_subdomain = bool (Optional)
  }

  customer_managed_key block "list" (Optional) {
    user_assigned_identity_id = string (Required)
    key_vault_key_id = string (Optional)
    managed_hsm_key_id = string (Optional)
  }

  identity block "list" (Optional) {
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  immutability_policy block "list" (Optional) {
    allow_protected_append_writes = bool (Required)
    period_since_creation_in_days = number (Required)
    state = string (Required)
  }

  network_rules block "list" (Optional) {
    default_action = string (Required)
    bypass = ['set', 'string'] (Optional, Computed)
    ip_rules = ['set', 'string'] (Optional, Computed)
    virtual_network_subnet_ids = ['set', 'string'] (Optional, Computed)

    private_link_access block "list" (Optional) {
      endpoint_resource_id = string (Required)
      endpoint_tenant_id = string (Optional, Computed)
    }
  }

  queue_properties block "list" (Optional) {

    cors_rule block "list" (Optional) {
      allowed_headers = ['list', 'string'] (Required)
      allowed_methods = ['list', 'string'] (Required)
      allowed_origins = ['list', 'string'] (Required)
      exposed_headers = ['list', 'string'] (Required)
      max_age_in_seconds = number (Required)
    }

    hour_metrics block "list" (Optional) {
      enabled = bool (Required)
      version = string (Required)
      include_apis = bool (Optional)
      retention_policy_days = number (Optional)
    }

    logging block "list" (Optional) {
      delete = bool (Required)
      read = bool (Required)
      version = string (Required)
      write = bool (Required)
      retention_policy_days = number (Optional)
    }

    minute_metrics block "list" (Optional) {
      enabled = bool (Required)
      version = string (Required)
      include_apis = bool (Optional)
      retention_policy_days = number (Optional)
    }
  }

  routing block "list" (Optional) {
    choice = string (Optional)
    publish_internet_endpoints = bool (Optional)
    publish_microsoft_endpoints = bool (Optional)
  }

  sas_policy block "list" (Optional) {
    expiration_period = string (Required)
    expiration_action = string (Optional)
  }

  share_properties block "list" (Optional) {

    cors_rule block "list" (Optional) {
      allowed_headers = ['list', 'string'] (Required)
      allowed_methods = ['list', 'string'] (Required)
      allowed_origins = ['list', 'string'] (Required)
      exposed_headers = ['list', 'string'] (Required)
      max_age_in_seconds = number (Required)
    }

    retention_policy block "list" (Optional) {
      days = number (Optional)
    }

    smb block "list" (Optional) {
      authentication_types = ['set', 'string'] (Optional)
      channel_encryption_type = ['set', 'string'] (Optional)
      kerberos_ticket_encryption_type = ['set', 'string'] (Optional)
      multichannel_enabled = bool (Optional)
      versions = ['set', 'string'] (Optional)
    }
  }

  static_website block "list" (Optional) {
    error_404_document = string (Optional)
    index_document = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
