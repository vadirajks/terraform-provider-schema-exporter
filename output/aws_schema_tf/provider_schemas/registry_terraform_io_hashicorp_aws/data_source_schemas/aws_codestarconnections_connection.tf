data "aws_codestarconnections_connection" "name" {
  arn = string (Optional, Computed)
  connection_status = string (Computed)
  host_arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  provider_type = string (Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional, Computed)
}
