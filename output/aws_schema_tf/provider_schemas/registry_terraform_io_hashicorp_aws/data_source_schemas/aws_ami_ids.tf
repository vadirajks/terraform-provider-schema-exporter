data "aws_ami_ids" "name" {
  owners = ['list', 'string'] (Required)
  executable_users = ['list', 'string'] (Optional)
  id = string (Optional, Computed)
  ids = ['list', 'string'] (Computed)
  include_deprecated = bool (Optional)
  name_regex = string (Optional)
  region = string (Optional, Computed)
  sort_ascending = bool (Optional)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
