resource "aws_efs_file_system_policy" "name" {
  file_system_id = string (Required)
  policy = string (Required)
  bypass_policy_lockout_safety_check = bool (Optional)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
