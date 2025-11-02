resource "aws_db_option_group" "name" {
  engine_name = string (Required)
  major_engine_version = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  option_group_description = string (Optional)
  region = string (Optional, Computed)
  skip_destroy = bool (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  option block "set" (Optional) {
    option_name = string (Required)
    db_security_group_memberships = ['set', 'string'] (Optional)
    port = number (Optional)
    version = string (Optional)
    vpc_security_group_memberships = ['set', 'string'] (Optional)

    option_settings block "set" (Optional) {
      name = string (Required)
      value = string (Required)
    }
  }

  timeouts block "single" (Optional) {
    delete = string (Optional)
  }
}
