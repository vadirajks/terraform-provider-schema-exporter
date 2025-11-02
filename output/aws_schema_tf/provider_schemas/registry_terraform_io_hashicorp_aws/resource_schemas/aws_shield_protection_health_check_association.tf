resource "aws_shield_protection_health_check_association" "name" {
  health_check_arn = string (Required)
  shield_protection_id = string (Required)
  id = string (Optional, Computed)
}
