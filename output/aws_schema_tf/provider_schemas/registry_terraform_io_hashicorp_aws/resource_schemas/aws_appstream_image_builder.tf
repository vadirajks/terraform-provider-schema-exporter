resource "aws_appstream_image_builder" "name" {
  instance_type = string (Required)
  name = string (Required)
  appstream_agent_version = string (Optional, Computed)
  arn = string (Computed)
  created_time = string (Computed)
  description = string (Optional, Computed)
  display_name = string (Optional, Computed)
  enable_default_internet_access = bool (Optional, Computed)
  iam_role_arn = string (Optional, Computed)
  id = string (Optional, Computed)
  image_arn = string (Optional, Computed)
  image_name = string (Optional, Computed)
  region = string (Optional, Computed)
  state = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  access_endpoint block "set" (Optional) {
    endpoint_type = string (Required)
    vpce_id = string (Optional, Computed)
  }

  domain_join_info block "list" (Optional) {
    directory_name = string (Optional)
    organizational_unit_distinguished_name = string (Optional)
  }

  vpc_config block "list" (Optional) {
    security_group_ids = ['set', 'string'] (Optional, Computed)
    subnet_ids = ['set', 'string'] (Optional, Computed)
  }
}
