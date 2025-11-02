data "aws_sfn_activity" "name" {
  arn = string (Optional, Computed)
  creation_date = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  region = string (Optional, Computed)
}
