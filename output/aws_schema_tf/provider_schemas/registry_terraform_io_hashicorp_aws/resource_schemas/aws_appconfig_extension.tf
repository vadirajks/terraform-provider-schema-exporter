resource "aws_appconfig_extension" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional, Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  version = number (Computed)

  action_point block "set" (Required) {
    point = string (Required)

    action block "set" (Required) {
      name = string (Required)
      uri = string (Required)
      description = string (Optional)
      role_arn = string (Optional)
    }
  }

  parameter block "set" (Optional) {
    name = string (Required)
    description = string (Optional)
    required = bool (Optional)
  }
}
