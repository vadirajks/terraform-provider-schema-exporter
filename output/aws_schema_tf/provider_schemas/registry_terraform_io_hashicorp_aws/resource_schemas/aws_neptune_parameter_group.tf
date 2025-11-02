resource "aws_neptune_parameter_group" "name" {
  family = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  parameter block "set" (Optional) {
    name = string (Required)
    value = string (Required)
    apply_method = string (Optional)
  }
}
