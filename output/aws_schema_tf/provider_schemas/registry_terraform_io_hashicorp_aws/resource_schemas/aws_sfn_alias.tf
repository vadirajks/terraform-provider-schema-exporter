resource "aws_sfn_alias" "name" {
  name = string (Required)
  arn = string (Computed)
  creation_date = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  routing_configuration block "list" (Required) {
    state_machine_version_arn = string (Required)
    weight = number (Required)
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
