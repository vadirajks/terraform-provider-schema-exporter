data "aws_prefix_list" "name" {
  cidr_blocks = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  prefix_list_id = string (Optional)
  region = string (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['set', 'string'] (Required)
  }

  timeouts block "single" (Optional) {
    read = string (Optional)
  }
}
