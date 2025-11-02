resource "aws_globalaccelerator_cross_account_attachment" "name" {
  name = string (Required)
  arn = string (Computed)
  created_time = string (Computed)
  id = string (Computed)
  last_modified_time = string (Computed)
  principals = ['set', 'string'] (Optional)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  resource block "set" (Optional) {
    cidr_block = string (Optional)
    endpoint_id = string (Optional)
    region = string (Optional)
  }
}
