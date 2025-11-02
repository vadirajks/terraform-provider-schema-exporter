resource "aws_account_region" "name" {
  enabled = bool (Required)
  region_name = string (Required)
  account_id = string (Optional)
  id = string (Optional, Computed)
  opt_status = string (Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
