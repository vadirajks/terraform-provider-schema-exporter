resource "aws_medialive_input" "name" {
  name = string (Required)
  type = string (Required)
  arn = string (Computed)
  attached_channels = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  input_class = string (Computed)
  input_partner_ids = ['list', 'string'] (Computed)
  input_security_groups = ['list', 'string'] (Optional)
  input_source_type = string (Computed)
  region = string (Optional, Computed)
  role_arn = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  destinations block "set" (Optional) {
    stream_name = string (Required)
  }

  input_devices block "set" (Optional) {
    id = string (Required)
  }

  media_connect_flows block "set" (Optional) {
    flow_arn = string (Required)
  }

  sources block "set" (Optional) {
    password_param = string (Required)
    url = string (Required)
    username = string (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }

  vpc block "list" (Optional) {
    subnet_ids = ['list', 'string'] (Required)
    security_group_ids = ['list', 'string'] (Optional)
  }
}
