resource "aws_codeconnections_connection" "name" {
  name = string (Required)
  arn = string (Computed)
  connection_status = string (Computed)
  host_arn = string (Optional)
  id = string (Computed)
  owner_account_id = string (Computed)
  provider_type = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
