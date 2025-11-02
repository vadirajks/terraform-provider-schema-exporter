data "aws_glue_registry" "name" {
  name = string (Required)
  arn = string (Computed)
  description = string (Computed)
  region = string (Optional, Computed)
}
