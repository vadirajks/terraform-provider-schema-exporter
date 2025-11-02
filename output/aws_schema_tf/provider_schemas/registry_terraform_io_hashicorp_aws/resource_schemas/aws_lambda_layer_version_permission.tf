resource "aws_lambda_layer_version_permission" "name" {
  action = string (Required)
  layer_name = string (Required)
  principal = string (Required)
  statement_id = string (Required)
  version_number = number (Required)
  id = string (Optional, Computed)
  organization_id = string (Optional)
  policy = string (Computed)
  region = string (Optional, Computed)
  revision_id = string (Computed)
  skip_destroy = bool (Optional)
}
