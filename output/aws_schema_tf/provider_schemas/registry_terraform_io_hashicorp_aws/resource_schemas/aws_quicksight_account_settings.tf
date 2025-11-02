resource "aws_quicksight_account_settings" "name" {
  aws_account_id = string (Optional, Computed)
  default_namespace = string (Optional, Computed)
  termination_protection_enabled = bool (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
