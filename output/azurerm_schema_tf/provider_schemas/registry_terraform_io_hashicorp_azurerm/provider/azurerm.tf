provider "azurerm" {
  ado_pipeline_service_connection_id = string (Optional)
  auxiliary_tenant_ids = ['list', 'string'] (Optional)
  client_certificate = string (Optional)
  client_certificate_password = string (Optional)
  client_certificate_path = string (Optional)
  client_id = string (Optional)
  client_id_file_path = string (Optional)
  client_secret = string (Optional)
  client_secret_file_path = string (Optional)
  disable_correlation_request_id = bool (Optional)
  disable_terraform_partner_id = bool (Optional)
  environment = string (Optional)
  metadata_host = string (Optional)
  msi_api_version = string (Optional)
  msi_endpoint = string (Optional)
  oidc_request_token = string (Optional)
  oidc_request_url = string (Optional)
  oidc_token = string (Optional)
  oidc_token_file_path = string (Optional)
  partner_id = string (Optional)
  resource_provider_registrations = string (Optional)
  resource_providers_to_register = ['list', 'string'] (Optional)
  skip_provider_registration = bool (Optional)
  storage_use_azuread = bool (Optional)
  subscription_id = string (Optional)
  tenant_id = string (Optional)
  use_aks_workload_identity = bool (Optional)
  use_cli = bool (Optional)
  use_msi = bool (Optional)
  use_oidc = bool (Optional)

  features block "list" (Optional) {

    api_management block "list" (Optional) {
      purge_soft_delete_on_destroy = bool (Optional)
      recover_soft_deleted = bool (Optional)
    }

    app_configuration block "list" (Optional) {
      purge_soft_delete_on_destroy = bool (Optional)
      recover_soft_deleted = bool (Optional)
    }

    application_insights block "list" (Optional) {
      disable_generated_rule = bool (Optional)
    }

    cognitive_account block "list" (Optional) {
      purge_soft_delete_on_destroy = bool (Optional)
    }

    databricks_workspace block "list" (Optional) {
      force_delete = bool (Optional)
    }

    key_vault block "list" (Optional) {
      purge_soft_delete_on_destroy = bool (Optional)
      purge_soft_deleted_certificates_on_destroy = bool (Optional)
      purge_soft_deleted_hardware_security_module_keys_on_destroy = bool (Optional)
      purge_soft_deleted_hardware_security_modules_on_destroy = bool (Optional)
      purge_soft_deleted_keys_on_destroy = bool (Optional)
      purge_soft_deleted_secrets_on_destroy = bool (Optional)
      recover_soft_deleted_certificates = bool (Optional)
      recover_soft_deleted_hardware_security_module_keys = bool (Optional)
      recover_soft_deleted_key_vaults = bool (Optional)
      recover_soft_deleted_keys = bool (Optional)
      recover_soft_deleted_secrets = bool (Optional)
    }

    log_analytics_workspace block "list" (Optional) {
      permanently_delete_on_destroy = bool (Optional)
    }

    machine_learning block "list" (Optional) {
      purge_soft_deleted_workspace_on_destroy = bool (Optional)
    }

    managed_disk block "list" (Optional) {
      expand_without_downtime = bool (Optional)
    }

    netapp block "list" (Optional) {
      delete_backups_on_backup_vault_destroy = bool (Optional)
      prevent_volume_destruction = bool (Optional)
    }

    postgresql_flexible_server block "list" (Optional) {
      restart_server_on_configuration_value_change = bool (Optional)
    }

    recovery_service block "list" (Optional) {
      purge_protected_items_from_vault_on_destroy = bool (Optional)
      vm_backup_stop_protection_and_retain_data_on_destroy = bool (Optional)
      vm_backup_suspend_protection_and_retain_data_on_destroy = bool (Optional)
    }

    recovery_services_vaults block "list" (Optional) {
      recover_soft_deleted_backup_protected_vm = bool (Optional)
    }

    resource_group block "list" (Optional) {
      prevent_deletion_if_contains_resources = bool (Optional)
    }

    storage block "list" (Optional) {
      data_plane_available = bool (Optional)
    }

    subscription block "list" (Optional) {
      prevent_cancellation_on_destroy = bool (Optional)
    }

    template_deployment block "list" (Optional) {
      delete_nested_items_during_deletion = bool (Required)
    }

    virtual_machine block "list" (Optional) {
      delete_os_disk_on_deletion = bool (Optional)
      detach_implicit_data_disk_on_deletion = bool (Optional)
      graceful_shutdown = bool (Optional)
      skip_shutdown_and_force_delete = bool (Optional)
    }

    virtual_machine_scale_set block "list" (Optional) {
      force_delete = bool (Optional)
      reimage_on_manual_upgrade = bool (Optional)
      roll_instances_when_required = bool (Optional)
      scale_to_zero_before_deletion = bool (Optional)
    }
  }
}
