resource "aws_serverlessapplicationrepository_cloudformation_stack" "name" {
  application_id = string (Required)
  capabilities = ['set', 'string'] (Required)
  name = string (Required)
  id = string (Optional, Computed)
  outputs = ['map', 'string'] (Computed)
  parameters = ['map', 'string'] (Optional, Computed)
  region = string (Optional, Computed)
  semantic_version = string (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
