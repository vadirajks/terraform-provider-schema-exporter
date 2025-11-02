resource "aws_kms_key_policy" "name" {
  key_id = string (Required)
  policy = string (Required)
  bypass_policy_lockout_safety_check = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
