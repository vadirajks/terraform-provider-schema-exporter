resource "aws_securityhub_configuration_policy_association" "name" {
  policy_id = string (Required)
  target_id = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)

  timeouts block "single" (Optional) {
    create = string (Optional)
    update = string (Optional)
  }
}
