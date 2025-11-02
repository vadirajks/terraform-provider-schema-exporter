resource "azurerm_managed_lustre_file_system" "name" {
  location = string (Required)
  name = string (Required)
  resource_group_name = string (Required)
  sku_name = string (Required)
  storage_capacity_in_tb = number (Required)
  subnet_id = string (Required)
  zones = ['set', 'string'] (Required)
  id = string (Optional, Computed)
  mgs_address = string (Computed)
  tags = ['map', 'string'] (Optional)

  encryption_key block "list" (Optional) {
    key_url = string (Required)
    source_vault_id = string (Required)
  }

  hsm_setting block "list" (Optional) {
    container_id = string (Required)
    logging_container_id = string (Required)
    import_prefix = string (Optional)
  }

  identity block "list" (Optional) {
    identity_ids = ['set', 'string'] (Required)
    type = string (Required)
  }

  maintenance_window block "list" (Required) {
    day_of_week = string (Required)
    time_of_day_in_utc = string (Required)
  }

  root_squash block "list" (Optional) {
    mode = string (Required)
    no_squash_nids = string (Required)
    squash_gid = number (Optional)
    squash_uid = number (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    read = string (Optional)
    update = string (Optional)
  }
}
