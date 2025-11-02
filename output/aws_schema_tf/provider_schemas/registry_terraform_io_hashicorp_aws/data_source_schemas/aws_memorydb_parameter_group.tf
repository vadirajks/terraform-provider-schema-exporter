data "aws_memorydb_parameter_group" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  family = string (Computed)
  id = string (Optional, Computed)
  parameter = ['set', ['object', {'name': 'string', 'value': 'string'}]] (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
