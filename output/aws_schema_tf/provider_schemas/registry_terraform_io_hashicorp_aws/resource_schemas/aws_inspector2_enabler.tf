resource "aws_inspector2_enabler" "name" {
  account_ids = ['set', 'string'] (Required)
  resource_types = ['set', 'string'] (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    delete = string (Optional)
    update = string (Optional)
  }
}
