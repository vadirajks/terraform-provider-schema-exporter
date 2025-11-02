data "aws_ssoadmin_instances" "name" {
  arns = ['list', 'string'] (Computed)
  id = string (Optional, Computed)
  identity_store_ids = ['list', 'string'] (Computed)
  region = string (Optional, Computed)
}
