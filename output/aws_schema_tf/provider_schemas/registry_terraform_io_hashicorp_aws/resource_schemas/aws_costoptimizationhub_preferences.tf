resource "aws_costoptimizationhub_preferences" "name" {
  id = string (Computed)
  member_account_discount_visibility = string (Optional, Computed)
  savings_estimation_mode = string (Optional, Computed)
}
