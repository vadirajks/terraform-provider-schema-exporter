resource "aws_ssm_default_patch_baseline" "name" {
  baseline_id = string (Required)
  operating_system = string (Required)
  id = string (Optional, Computed)
  region = string (Optional, Computed)
}
