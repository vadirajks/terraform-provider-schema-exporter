resource "aws_grafana_workspace" "name" {
  account_access_type = string (Required)
  authentication_providers = ['list', 'string'] (Required)
  permission_type = string (Required)
  arn = string (Computed)
  configuration = string (Optional, Computed)
  data_sources = ['list', 'string'] (Optional)
  description = string (Optional)
  endpoint = string (Computed)
  grafana_version = string (Optional, Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  notification_destinations = ['list', 'string'] (Optional)
  organization_role_name = string (Optional)
  organizational_units = ['list', 'string'] (Optional)
  region = string (Optional, Computed)
  role_arn = string (Optional)
  saml_configuration_status = string (Computed)
  stack_set_name = string (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  network_access_control block "list" (Optional) {
    prefix_list_ids = ['set', 'string'] (Required)
    vpce_ids = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }

  vpc_configuration block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Required)
    subnet_ids = ['set', 'string'] (Required)
  }
}
