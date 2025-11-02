data "aws_sfn_state_machine" "name" {
  name = string (Required)
  arn = string (Computed)
  creation_date = string (Computed)
  definition = string (Computed)
  description = string (Computed)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
  revision_id = string (Computed)
  role_arn = string (Computed)
  status = string (Computed)
}
