resource "aws_quicksight_namespace" "name" {
  namespace = string (Required)
  arn = string (Computed)
  aws_account_id = string (Optional, Computed)
  capacity_region = string (Computed)
  creation_status = string (Computed)
  id = string (Computed)
  identity_store = string (Optional, Computed)
  region = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
  }
}
