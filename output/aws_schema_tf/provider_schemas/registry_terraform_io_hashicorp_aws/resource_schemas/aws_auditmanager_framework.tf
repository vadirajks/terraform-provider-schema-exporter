resource "aws_auditmanager_framework" "name" {
  name = string (Required)
  arn = string (Computed)
  compliance_type = string (Optional)
  description = string (Optional)
  framework_type = string (Computed)
  id = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  control_sets block "set" (Optional) {
    name = string (Required)
    id = string (Computed)

    controls block "set" (Optional) {
      id = string (Required)
    }
  }
}
