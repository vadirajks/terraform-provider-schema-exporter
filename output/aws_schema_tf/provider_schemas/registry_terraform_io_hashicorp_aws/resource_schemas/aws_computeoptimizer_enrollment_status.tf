resource "aws_computeoptimizer_enrollment_status" "name" {
  status = string (Required)
  id = string (Computed)
  include_member_accounts = bool (Optional, Computed)
  number_of_member_accounts_opted_in = number (Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
