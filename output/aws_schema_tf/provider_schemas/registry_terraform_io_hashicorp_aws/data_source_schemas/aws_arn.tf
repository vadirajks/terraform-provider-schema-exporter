data "aws_arn" "name" {
  arn = string (Required)
  account = string (Computed)
  id = string (Optional, Computed)
  partition = string (Computed)
  region = string (Computed)
  resource = string (Computed)
  service = string (Computed)
}
