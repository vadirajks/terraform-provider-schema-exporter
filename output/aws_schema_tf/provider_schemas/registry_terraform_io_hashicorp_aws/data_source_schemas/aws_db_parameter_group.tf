data "aws_db_parameter_group" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  family = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
