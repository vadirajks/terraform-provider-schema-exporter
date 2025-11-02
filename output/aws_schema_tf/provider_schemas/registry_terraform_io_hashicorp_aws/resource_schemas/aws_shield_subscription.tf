resource "aws_shield_subscription" "name" {
  auto_renew = string (Optional, Computed)
  id = string (Computed)
  skip_destroy = bool (Optional)
}
