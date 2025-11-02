resource "aws_resourcegroups_group" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  configuration block "set" (Optional) {
    type = string (Required)

    parameters block "set" (Optional) {
      name = string (Required)
      values = ['list', 'string'] (Required)
    }
  }

  resource_query block "list" (Optional) {
    query = string (Required)
    type = string (Optional)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
