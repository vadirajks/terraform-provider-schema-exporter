resource "aws_workspaces_directory" "name" {
  alias = string (Computed)
  customer_user_name = string (Computed)
  directory_id = string (Optional, Computed)
  directory_name = string (Computed)
  directory_type = string (Computed)
  dns_ip_addresses = ['set', 'string'] (Computed)
  iam_role_id = string (Computed)
  id = string (Optional, Computed)
  ip_group_ids = ['set', 'string'] (Optional, Computed)
  region = string (Optional, Computed)
  registration_code = string (Computed)
  subnet_ids = ['set', 'string'] (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  user_identity_type = string (Optional, Computed)
  workspace_directory_description = string (Optional)
  workspace_directory_name = string (Optional)
  workspace_security_group_id = string (Computed)
  workspace_type = string (Optional)

  active_directory_config block "list" (Optional) {
    domain_name = string (Required)
    service_account_secret_arn = string (Required)
  }

  certificate_based_auth_properties block "list" (Optional) {
    certificate_authority_arn = string (Optional)
    status = string (Optional, Computed)
  }

  saml_properties block "list" (Optional) {
    relay_state_parameter_name = string (Optional)
    status = string (Optional)
    user_access_url = string (Optional)
  }

  self_service_permissions block "list" (Optional) {
    change_compute_type = bool (Optional)
    increase_volume_size = bool (Optional)
    rebuild_workspace = bool (Optional)
    restart_workspace = bool (Optional)
    switch_running_mode = bool (Optional)
  }

  workspace_access_properties block "list" (Optional) {
    device_type_android = string (Optional)
    device_type_chromeos = string (Optional)
    device_type_ios = string (Optional)
    device_type_linux = string (Optional)
    device_type_osx = string (Optional)
    device_type_web = string (Optional)
    device_type_windows = string (Optional)
    device_type_zeroclient = string (Optional)
  }

  workspace_creation_properties block "list" (Optional) {
    custom_security_group_id = string (Optional)
    default_ou = string (Optional)
    enable_internet_access = bool (Optional)
    enable_maintenance_mode = bool (Optional)
    user_enabled_as_local_administrator = bool (Optional)
  }
}
