resource "azurerm_media_services_account" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  id = string (Optional, Computed)
  public_network_access_enabled = bool (Optional)
  storage_authentication_type = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)

  encryption block "list"  (Optional){
    current_key_identifier = string (Computed)
    key_vault_key_identifier = string (Optional)
    type = string (Optional)

    managed_identity block "list"  (Optional){
      use_system_assigned_identity = bool (Optional)
      user_assigned_identity_id = string (Optional)
    }
  }

  identity block "list"  (Optional){
    type = string (Required)
    identity_ids = ['set', 'string'] (Optional)
    principal_id = string (Computed)
    tenant_id = string (Computed)
  }

  key_delivery_access_control block "list"  (Optional){
    default_action = string (Optional)
    ip_allow_list = ['set', 'string'] (Optional)
  }

  storage_account block "set"  (Required){
    id = string (Required)
    is_primary = bool (Optional)

    managed_identity block "list"  (Optional){
      use_system_assigned_identity = bool (Optional)
      user_assigned_identity_id = string (Optional)
    }
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
