resource "aws_redshift_parameter_group" "name" {
  family = string (Required)
  name = string (Required)
  arn = string (Computed)
  description = string (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  parameter block "set" (Optional) {
    name = string (Required)
    value = string (Required)
  }
}
