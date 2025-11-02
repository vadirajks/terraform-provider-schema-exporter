resource "aws_opsworks_stack" "name" {
  default_instance_profile_arn = string (Required)
  name = string (Required)
  region = string (Required)
  service_role_arn = string (Required)
  agent_version = string (Optional, Computed)
  arn = string (Computed)
  berkshelf_version = string (Optional)
  color = string (Optional)
  configuration_manager_name = string (Optional)
  configuration_manager_version = string (Optional)
  custom_json = string (Optional)
  default_availability_zone = string (Optional, Computed)
  default_os = string (Optional)
  default_root_device_type = string (Optional)
  default_ssh_key_name = string (Optional)
  default_subnet_id = string (Optional, Computed)
  hostname_theme = string (Optional)
  id = string (Optional, Computed)
  manage_berkshelf = bool (Optional)
  stack_endpoint = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  use_custom_cookbooks = bool (Optional)
  use_opsworks_security_groups = bool (Optional)
  vpc_id = string (Optional, Computed)

  custom_cookbooks_source block "list"  (Optional){
    type = string (Required)
    url = string (Required)
    password = string (Optional)
    revision = string (Optional)
    ssh_key = string (Optional)
    username = string (Optional)
  }

  timeouts block "single"  (Optional){
    create = string (Optional)
  }
}
