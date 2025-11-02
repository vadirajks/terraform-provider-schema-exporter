resource "aws_backup_framework" "name" {
  name = string (Required)
  arn = string (Computed)
  creation_time = string (Computed)
  deployment_status = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  status = string (Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  control block "set" (Required) {
    name = string (Required)

    input_parameter block "set" (Optional) {
      name = string (Optional)
      value = string (Optional)
    }

    scope block "list" (Optional) {
      compliance_resource_ids = ['set', 'string'] (Optional, Computed)
      compliance_resource_types = ['set', 'string'] (Optional, Computed)
      tags = ['map', 'string'] (Optional)
    }
  }

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
