resource "aws_emr_security_configuration" "name" {
  configuration = string (Required)
  creation_date = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  name_prefix = string (Optional, Computed)
  region = string (Optional, Computed)
}
