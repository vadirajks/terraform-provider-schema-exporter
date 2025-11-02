data "aws_shield_protection" "name" {
  id = string (Computed)
  name = string (Computed)
  protection_arn = string (Computed)
  protection_id = string (Optional, Computed)
  resource_arn = string (Optional, Computed)
}
