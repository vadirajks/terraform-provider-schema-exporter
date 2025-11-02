resource "aws_kms_key" "name" {
  arn = string (Computed)
  bypass_policy_lockout_safety_check = bool (Optional)
  custom_key_store_id = string (Optional)
  customer_master_key_spec = string (Optional)
  deletion_window_in_days = number (Optional)
  description = string (Optional, Computed)
  enable_key_rotation = bool (Optional)
  id = string (Optional, Computed)
  is_enabled = bool (Optional)
  key_id = string (Computed)
  key_usage = string (Optional)
  multi_region = bool (Optional, Computed)
  policy = string (Optional, Computed)
  region = string (Optional, Computed)
  rotation_period_in_days = number (Optional, Computed)
  tags = ['map', 'string'] (Optional)
  tags_all = ['map', 'string'] (Optional, Computed)
  xks_key_id = string (Optional)

  timeouts block "single" (Optional) {
    create = string (Optional)
  }
}
