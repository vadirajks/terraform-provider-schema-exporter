data "aws_ram_resource_share" "name" {
  resource_owner = string (Required)
  arn = string (Computed)
  id = string (Optional, Computed)
  name = string (Optional, Computed)
  owning_account_id = string (Computed)
  region = string (Optional, Computed)
  resource_arns = ['list', 'string'] (Computed)
  resource_share_status = string (Optional)
  status = string (Computed)
  tags = ['map', 'string'] (Optional, Computed)

  filter block "set" (Optional) {
    name = string (Required)
    values = ['list', 'string'] (Required)
  }
}
