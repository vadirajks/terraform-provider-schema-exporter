resource "aws_codestarconnections_connection" "name" {
  name = string (Required)
  arn = string (Computed)
  connection_status = string (Computed)
  host_arn = string (Optional)
  id = string (Optional, Computed)
  provider_type = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
}
