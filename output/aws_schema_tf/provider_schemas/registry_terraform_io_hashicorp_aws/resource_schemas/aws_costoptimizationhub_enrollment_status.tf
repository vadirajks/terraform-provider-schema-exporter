resource "aws_costoptimizationhub_enrollment_status" "name" {
  id = string (Computed)
  include_member_accounts = bool (Optional, Computed)
  status = string (Computed)
}
